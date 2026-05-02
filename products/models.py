from django.db import models

# Create your models here.


class Products (models.Model):
    name = models.CharField(max_length=150)
    description = models.TextField()
    price = models.DecimalField(max_digits=100000, decimal_places=2)

    class Meta :
        verbose_name = ("Product")
        verbose_name_plural = ("Products")

    def __str__(self):
        return self.name

"""
Chaque fois que je modifie ma table ou ma classe du model voici les deux deux
commandes à insérer : 

    python manage.py makemigrations
    python manage.py migrate
"""
