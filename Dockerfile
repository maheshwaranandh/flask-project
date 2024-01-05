# Use the official Python image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install the dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files into the container
COPY . .

# Expose the port that the Flask app will run on (this should match the port you specified in your Flask app)
EXPOSE 4001

# Run the Flask application when the container starts
CMD ["python", "app.py"]

