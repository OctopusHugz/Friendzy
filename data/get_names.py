#!/usr/bin/env python3
"""Fetch dummy names from https://randomuser.me/api/"""
from requests import get
import json


if __name__ == "__main__":
    url = "https://randomuser.me/api/?inc=gender,name,\
           email,login,picture&nat=us&results=50&noinfo"
    r = get(url).json()
    users = r.get('results')
    user_list = []
    user_dict = {}
    tuple_list = []
    for user in users:
        user_dict.update({'first_name': user.get('name').get('first'),
                          'last_name': user.get('name').get('last'),
                          'email': user.get('email'),
                          'id': user.get('login').get('uuid'),
                          'password': user.get('login').get('password')})
        user_list.append(user_dict)
        user_dict = {}

        tup = (user.get('login').get('uuid'), user.get('email'),
               user.get('login').get('password'), user.get('name').get('first'),
               user.get('name').get('last'))
        tuple_list.append(tup)

    return_dict = {"users": user_list}
    filename = "users.json"
    with open(filename, 'a') as file:
        json.dump(return_dict, file)

    f2 = "tuples.txt"
    with open(f2, 'a') as file:
        file.write(str(tuple_list))
