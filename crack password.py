from passlib.hash import md5_crypt

dict = ["password", "qwerty", "123456", "Password123", '123', 'abc', 'abc123', '123abc']

hash = "$1$mERr$2DtFmo8.aK.ge8uRJckmY."

for password in dict:
    if md5_crypt.verify(password, hash):
        print("Password Found: %s" % password)
