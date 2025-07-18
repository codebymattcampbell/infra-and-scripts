# Stage 1: Build stage
FROM python:3.10-slim AS builder

WORKDIR /app

# Copy app and install dependencies
COPY app/ /app/
COPY requirements.txt .

# Install build dependencies separately (none for basic Flask, but pattern holds)
RUN pip install --upgrade pip && \
    pip install --user -r requirements.txt

# Stage 2: Final runtime image
FROM python:3.10-slim

WORKDIR /app

# Copy only needed things from builder
COPY --from=builder /root/.local /root/.local
COPY app/ /app/

ENV PATH=/root/.local/bin:$PATH

EXPOSE 5000
CMD ["python", "app.py"]
