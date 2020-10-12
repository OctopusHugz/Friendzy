#!/usr/bin/python3
"""
initialize the models package
"""
from models.engine.db_storage import DBStorage
from sqlalchemy.ext.declarative import declarative_base
storage = DBStorage()
Base = declarative_base()
