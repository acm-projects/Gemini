from flask import Flask, request, jsonify
import script_remote_img

app = Flask(__name__)
@app.route('/apiGemini', methods=['GET', 'POST'])
def hello_world():
    Query = str(request.args['Query'])
    d = str(script_remote_img.return_img_urls(Query))
    return d


if __name__ == '__main__':
    app.run(debug = True)