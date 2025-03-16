# Use Python base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install fastapi uvicorn numpy pandas scikit-learn joblib

# Expose API port
EXPOSE 8000

# Start FastAPI Server
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
