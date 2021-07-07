import re
from string import ascii_letters


def check_valid_email_address(email):
    return bool(re.search(r"^[\w\.\+\-]+\@[\w]+\.[a-z]{2,3}$", email))


def validate_user_name(nickname):
    return all(map(lambda c: c in ascii_letters, nickname))
