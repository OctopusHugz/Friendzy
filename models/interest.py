#!/usr/bin/python
"""Interest class"""
from sqlalchemy.sql.sqltypes import Integer
from models import Base
from sqlalchemy import Column, String


class Interest(Base):
    """Representation of Interest """
    __tablename__ = 'interests'
    id = Column(Integer(50), primary_key=True)
    name = Column(String(128), nullable=False)
