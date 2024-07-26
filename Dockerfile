# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY app.py app.py

# Expose port 5000
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
