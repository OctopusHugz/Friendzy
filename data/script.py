#!/usr/bin/env python3
import json
from random import randint
count = 0
with open('user_ids.txt') as f:
    while count < 50:
        user_id = f.readline()
        with open('user_interest_finished.txt', 'a') as f2:
            for i in range(0, 5):
                line_copy = '(\'' + user_id.strip('\n') + '\', \'' + str(randint(1, 30)) + '\')\n'
                f2.write(line_copy)
        count += 1
