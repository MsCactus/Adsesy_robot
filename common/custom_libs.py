import json
import datetime

# Convert an HTTP response object to dictionary format (from JSON data)
def response_to_dictionary(response):
    return json.loads(json.dumps(json.loads(response.text), indent=2, ensure_ascii=False).encode().decode())

# Generate current date time of the system
def generate_current_time():
    return str(datetime.datetime.now())

# Generate name task depend on current date time so it could be an unique email
def generate_unique_user_email():
    current_time = generate_current_time()
    unique_email = 'otp' + current_time 
    return unique_email
