import os
import io

from google.cloud import vision_v1

os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = 'VisionAPI/token.json'

client = vision_v1.ImageAnnotatorClient()

#### LOCAL IMAGE ####

with io.open('VisionAPI/images/bag.webp', 'rb') as image_file:
    content = image_file.read()
    
image = vision_v1.Image(content=content)

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

def detect_web(path):
    """Detects web annotations given an image."""
    with io.open(path, 'rb') as image_file:
        content = image_file.read()

    image = vision_v1.Image(content=content)

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

detect_web('VisionAPI/images/bag.webp')