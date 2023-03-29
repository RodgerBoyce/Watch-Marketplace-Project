from flask import Flask, render_template
from controllers.watches_controller import watches_blueprint
from controllers.brands_controller import brands_blueprint
from controllers.dashboard_controller import dashboard_blueprint


app = Flask(__name__)

app.register_blueprint(watches_blueprint)
app.register_blueprint(brands_blueprint)
app.register_blueprint(dashboard_blueprint)


if __name__ == "__main__":
    app.run(debug=True)