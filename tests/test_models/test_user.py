#!/usr/bin/python3
"""
Contains the Testis for User class
"""

from datetime import datetime
import inspect
from models.user import User
from models.base_model import BaseModel
import pep8
import unittest

class TestUser(unittest.TestCase):
    """Test the User class"""
    def test_id_attr(self):
        """Test that User has attr id, and is unique string"""
        user1 = User()
        user2 = User()
        self.assertTrue(hasattr(user1, "id"))
        self.assertNotEqual(user1.id, user2.id)

    def test_kwargs(self):
        """Test that User has attr id, and is unique string"""
        user1 = User(email='test@example.com', password='1234', first_name='Jack', last_name='Off')
        self.assertTrue(hasattr(user1, "email"))
        self.assertTrue(hasattr(user1, "password"))
        self.assertTrue(hasattr(user1, "first_name"))
        self.assertTrue(hasattr(user1, "last_name"))
