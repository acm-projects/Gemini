import os
import io
from google.cloud import vision
from google.cloud.vision import types

os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = r'perfect-age-294000-e8cefcdf70dd.json'

client = vision.ImageAnnotatorClient()
