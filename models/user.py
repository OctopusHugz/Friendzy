#!/usr/bin/python3
""" holds class User"""
from sqlalchemy import Column, String, ForeignKey, Table
from sqlalchemy.orm import relationship
from models import Base


user_interest = Table('user_interest', Base.metadata,
                          Column('user_id', String(60),
                                 ForeignKey('users.id', onupdate='CASCADE',
                                            ondelete='CASCADE'),
                                 primary_key=True),
                          Column('interest_id', String(60),
                                 ForeignKey('interests.id', onupdate='CASCADE',
                                            ondelete='CASCADE'),
                                 primary_key=True))


class User(Base):
    """Representation of a user """
    __tablename__ = 'users'
    id = Column(String(60), primary_key=True)
    email = Column(String(128), nullable=False)
    password = Column(String(128), nullable=False)
    first_name = Column(String(128), nullable=True)
    last_name = Column(String(128), nullable=True)
    interests = relationship("Interest",
                                 secondary=user_interest,
                                 viewonly=False)

