from flask import Flask

app = Flask( __name__ )

@app.route("/hello")
def helloworld():
    return "Hello world from my first dockerized app, bitches!"

if __name__ == "__main__":
    app.run()