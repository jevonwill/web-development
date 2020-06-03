from django.db import models
from django.contrib.auth.models import User


class Review(models.Model):
        title = models.CharField(max_length=100)
        content = models.TextField()
        rating = models.IntegerField(max_length=1) 
        author = models.ForeignKey(User, on_delete=models.CASCADE)   

        def __str__(self):
                return self.title              
