# Use official Python image
FROM python:3.10-slim


LABEL maintainer="pooja3651 (https://github.com/pooja3651)"
LABEL version="1.0"
LABEL description="FastAPI application Docker image"

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port
EXPOSE 8000

# Run FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

