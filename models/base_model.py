#!/usr/bin/python3
"""
Contains class BaseModel
"""

import models
from sqlalchemy.ext.declarative import declarative_base
Base = declarative_base()


class BaseModel:
    """The BaseModel class from which future classes will be derived"""

    def __str__(self):
        """String representation of the BaseModel class"""
        return "[{:s}] ({}) {}".format(self.__class__.__name__, self.id,
                                         self.__dict__)

    def save(self):
        """updates the attribute 'updated_at' with the current datetime"""
        models.storage.new(self)
        models.storage.save()

    def to_dict(self):
        """returns a dictionary containing all keys/values of the instance"""
        new_dict = self.__dict__.copy()
        new_dict["__class__"] = self.__class__.__name__
        if "_sa_instance_state" in new_dict:
            del new_dict["_sa_instance_state"]
        return new_dict

    def delete(self):
        """delete the current instance from the storage"""
        models.storage.delete(self)
