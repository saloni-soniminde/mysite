FROM python:3.6.7

# Set PYTHONUNBUFFERED so output is displayed in the Docker log
ENV PYTHONUNBUFFERED=1

# Copy the rest of the applicaion's code
WORKDIR /www

COPY . /www/
# Install dependencies
RUN pip install -r requirements.txt

# Run the app
CMD ["echo","Hello to docker"]

EXPOSE 8000