from flask import Flask
from main import db  # Import the db object from your Flask application file (main.py)
from models import User, Stats  # Import your SQLAlchemy models

# Create a Flask application instance
app = Flask(__name__)

# Load the configuration from your Flask application (if applicable)
# app.config.from_pyfile('config.py')  # Adjust if you have a separate configuration file

# Set up the Flask application context
with app.app_context():
    # Create all tables
    db.create_all()

print("Database tables created successfully.")
