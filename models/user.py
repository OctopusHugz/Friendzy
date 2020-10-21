#!/usr/bin/python3
""" holds class User"""
from werkzeug.security import generate_password_hash, check_password_hash
from models.base_model import BaseModel, Base
from sqlalchemy import Column, String, ForeignKey, Table, Integer
from sqlalchemy.orm import backref, relationship
import uuid


user_interest = Table('user_interest', Base.metadata,
	                  Column('user_id', String(60),
			                 ForeignKey('users.id', onupdate='CASCADE',
				                        ondelete='CASCADE'),
				             primary_key=True),
			          Column('interest_id', Integer,
			                 ForeignKey('interests.id', onupdate='CASCADE',
						                ondelete='CASCADE'),
				             primary_key=True))


class User(BaseModel, Base):
    """ USER CLASS """
    __tablename__ = 'users'
    id = Column(String(60), primary_key=True)
    email = Column(String(128), nullable=False)
    password = Column(String(128), nullable=False)
    first_name = Column(String(128), nullable=True)
    last_name = Column(String(128), nullable=True)
    interests = relationship("Interest",
                             secondary=user_interest,
					         viewonly=False)

    def __init__(self, *args, **kwargs):
        """initializes user"""
        if kwargs:
            for key, value in kwargs.items():
                if key != "__class__":
                    setattr(self, key, value)

            if kwargs.get("id", None) is None:
                self.id = str(uuid.uuid4())
        else:
            self.id = str(uuid.uuid4())
            email = ""
            password = ""
            first_name = ""
            last_name = ""
        if self.password is not None:
            self.password = generate_password_hash(self.password)

    def check_password(self, password):
        return check_password_hash(self.password, password)
