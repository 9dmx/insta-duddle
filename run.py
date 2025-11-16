#!/usr/bin/env python
import subprocess
import sys
import os

# Change to script directory
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# Run the main application
subprocess.run([sys.executable, 'main.py'])
