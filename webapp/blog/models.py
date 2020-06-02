from django.db import models
from django.contrib.auth.models import User


class Review(models.Model):
        title = models.CharField(max_length=100)
        content = models.Textfield()
        date_posted = models.DateTimeField(auto_now_add=True) 
        author = models.ForeignKey(User, on_delete=models.CASCADE)                  
