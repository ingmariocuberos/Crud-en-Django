from django.db import models


class Clase(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 100)
    creditos = models.PositiveSmallIntegerField()
    descripcion = models.EmailField(max_length = 500)
    tipo = models.CharField(max_length = 30)
    modalidad = models.CharField(max_length = 30)

    def __str__(self):
        texto = "{0}. {1}"
        return texto.format(self.id, self.nombre)

class Curso(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 100)
    perfil = models.CharField(max_length = 500)
    descripcion = models.CharField(max_length = 500)
    duracion = models.IntegerField()
    clases = models.ManyToManyField(Clase)
    

    def id_nombre(self):
        return "{}. {}".format(self.id , self.nombre)

    def __str__(self):
        return self.id_nombre()
    
    class Meta:
        verbose_name = 'Curso'
        verbose_name_plural = 'Cursos'
        db_table = 'curso'
        ordering = ['nombre']

class Alumnos(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 100)
    apellido = models.CharField(max_length = 100)
    correo = models.EmailField(max_length = 500)
    cursoMatriculado = models.ForeignKey(Curso, null=True, blank=True, on_delete=models.CASCADE)
    clasesVistas = models.IntegerField()
    
    def id_nombre(self):
        return "{}. {} {}".format(self.id , self.nombre, self.cursoMatriculado)

    def __str__(self):
        return self.id_nombre()
    
    class Meta:
        verbose_name = 'Alumno'
        verbose_name_plural = 'Alumnos'
        db_table = 'alumnos'
        ordering = ['nombre']


