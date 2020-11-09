import requests
import json

def jprint(obj):
    # create a formatted string of the Python JSON object
    text = json.dumps(obj, sort_keys=True, indent=4)
    print(text)

headers = { 'apikey': 'b0ba1870-2202-11eb-a48b-8b02dff212a2'}

params = (
   ("q","Gucci Slides"),
   ("tbm","shop"),
   ("device","desktop"),
   ("location","Dallas,Texas,United States"),
);

response = requests.get('https://app.zenserp.com/api/v2/search', headers=headers, params=params);

jprint(response.json())