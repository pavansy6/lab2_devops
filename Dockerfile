# Use the official Python base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt first (for Docker cache)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app files
COPY . .

# Expose Flask's port
EXPOSE 8000


# Run the Python script
CMD ["python", "main.py"]