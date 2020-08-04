from flask import request
from flask_api import FlaskAPI
from flask_cors import CORS
from anagram import Anagram

app = FlaskAPI(__name__)
CORS(app)


def all_perms(elements):
    if len(elements) <= 1:
        return elements
    else:
        tmp = []
        for perm in all_perms(elements[1:]):
            for i in range(len(elements)):
                tmp.append(perm[:i] + elements[0:1] + perm[i:])
        return tmp


@app.route("/api/v1/findAnagram", methods=['POST'])
def all_perms():
    data = request.json
    anagram_output = Anagram.return_anagrams(data['word'])
    return {
        'status': 200,
        'anagrams': anagram_output,
    }


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
