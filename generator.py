#!/usr/bin/env python3

import fileinput
from dank.DankGenerator import DankGenerator

for line in fileinput.input():
  for item in DankGenerator(line.strip()):
    print(item.decode('utf-8'))
