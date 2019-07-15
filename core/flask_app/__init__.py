#!/usr/bin/env python3
import os

from flask import Flask
from werkzeug.contrib.fixers import ProxyFix

app = Flask(__name__)
app.wsgi_app = ProxyFix(app.wsgi_app)

import flask_app.serve
