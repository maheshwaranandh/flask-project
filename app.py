from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, Flask!"

@app.route("/hello")
def hello():
    return "Hello, World!"

@app.route("/ping")
def ping():
    return "pong"


@app.route("/greet/<name>")
def greet(name):
    return render_template("greet.html", name=name)

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=4001)

