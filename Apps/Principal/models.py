from django.db import models

class Clase(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 100)
    creditos = models.PositiveSmallIntegerField()
    descripcion = models.EmailField(max_length = 500)
    tipo = models.CharField(max_length = 30)
    modalidad = models.CharField(max_length = 30)
    

# class Curso(models.Model):
#     id = models.IntegerField(primary_key = True)
#     nombre = models.CharField(max_length = 100)
#     apellido = models.CharField(max_length = 100)
#     correo = models.EmailField(max_length = 200)
#     telefono = models.CharField(max_length = 100)
#     curso = models.CharField(max_length = 500)
#     idcurso = models.IntegerField()
#     clasesVistas = models.IntegerField()
#     progreso = models.DecimalField(max_digits=6, decimal_places=4)

# class Persona(models.Model):
#     id = models.AutoField(primary_key = True)
#     nombre = models.CharField(max_length = 100)
#     apellido = models.CharField(max_length = 100)
#     correo = models.EmailField(max_length = 200)
#     telefono = models.CharField(max_length = 100)
#     curso = models.CharField(max_length = 500)
#     idcurso = models.IntegerField()
#     clasesVistas = models.IntegerField()
#     progreso = models.DecimalField(max_digits=6, decimal_places=4)

