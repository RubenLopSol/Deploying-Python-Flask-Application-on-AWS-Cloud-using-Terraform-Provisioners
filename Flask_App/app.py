from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def home():
    return render_template('index.html')


if __name__ == '__main__':
    # host allow outside of container as well.by default is serv only in localhost inside container
    app.run(debug=True, host='0.0.0.0', port=80)
