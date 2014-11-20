import os
from builtins import open

def delete(filename):
    os.remove(filename)

def create(filename, content):
    f = open(filename, "w")
    f.write(content)
    f.close()