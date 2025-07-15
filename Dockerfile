FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml .

RUN pip install --no-cache-dir -e .

COPY . .

CMD ["tail", "-f", "/dev/null"]