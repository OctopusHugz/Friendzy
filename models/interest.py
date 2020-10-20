#!/usr/bin/python
"""Interest class"""
import models
from sqlalchemy.sql.sqltypes import Integer
from models.base_model import BaseModel, Base
from sqlalchemy import Column, String


class Interest(BaseModel, Base):
    """Representation of Interest """
    __tablename__ = 'interests'
    id = Column(Integer, primary_key=True)
    name = Column(String(128), nullable=False)
    description = Column(String(1024), nullable=False)

    def __init__(self, *args, **kwargs):
        """Initialization of Interest class"""
        number_interests = models.storage.count(Interest) + 1
        if kwargs:
            for k, v in kwargs.items():
                if k != "__class__":
                    setattr(self, k, v)

            if kwargs.get("id", None) is None:
                self.id = number_interests
        else:
            self.id = number_interests
            self.name = ""
            self.description = ""
