import os
import io

from google.cloud import vision_v1

os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = 'VisionAPI/token.json'

client = vision_v1.ImageAnnotatorClient()

#### REMOTE IMAGE #####

image = vision_v1.Image()
image.source.image_uri = 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTeRVXrYleuL7a8evAgr4GxINTMDessxShQalI60-bd7WjkOg73xyvzKityOknTmCT3CLatPkU-hvbDsxIVtP9wRJdVymNQwUiU6Det3eo6dXZmz31DuwPvcNg&usqp=CAE'

#### LABEL DETECTION ####

response_label = client.label_detection(image=image)

for label in response_label.label_annotations:
    print({'label': label.description, 'score': label.score})

#### LOGO DETECTION ####

response = client.logo_detection(image=image)

logos = response.logo_annotations
print('Logos:')

for logo in logos:
    print(logo.description)

if response.error.message:
    raise Exception(
        '{}\nFor more info on error messages, check: '
        'https://cloud.google.com/apis/design/errors'.format(
            response.error.message))

#### WEB DETECTION ####

def detect_web_uri(uri):
    """Detects web annotations in the file located in Google Cloud Storage."""
    from google.cloud import vision
    client = vision.ImageAnnotatorClient()
    image = vision.Image()
    image.source.image_uri = uri

    response = client.web_detection(image=image)
    annotations = response.web_detection

    if annotations.best_guess_labels:
        for label in annotations.best_guess_labels:
            print('\nBest guess label: {}'.format(label.label))

    if annotations.pages_with_matching_images:
        print('\n{} Pages with matching images found:'.format(
            len(annotations.pages_with_matching_images)))

        for page in annotations.pages_with_matching_images:
            print('\n\tPage url   : {}'.format(page.url))

            if page.full_matching_images:
                print('\t{} Full Matches found: '.format(
                       len(page.full_matching_images)))

                for image in page.full_matching_images:
                    print('\t\tImage url  : {}'.format(image.url))

            if page.partial_matching_images:
                print('\t{} Partial Matches found: '.format(
                       len(page.partial_matching_images)))

                for image in page.partial_matching_images:
                    print('\t\tImage url  : {}'.format(image.url))

    if annotations.web_entities:
        print('\n{} Web entities found: '.format(
            len(annotations.web_entities)))

        for entity in annotations.web_entities:
            print('\n\tScore      : {}'.format(entity.score))
            print(u'\tDescription: {}'.format(entity.description))

    if annotations.visually_similar_images:
        print('\n{} visually similar images found:\n'.format(
            len(annotations.visually_similar_images)))

        for image in annotations.visually_similar_images:
            print('\tImage url    : {}'.format(image.url))

    if response.error.message:
        raise Exception(
            '{}\nFor more info on error messages, check: '
            'https://cloud.google.com/apis/design/errors'.format(
                response.error.message))

detect_web_uri(image.source.image_uri)