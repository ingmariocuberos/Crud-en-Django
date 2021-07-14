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
    clase1 = models.ForeignKey(Clase, null=True,blank=True, on_delete=models.CASCADE)
    # clase2 = models.ForeignKey(Clase, null=True,blank=True, on_delete=models.CASCADE)
    # clase3 = models.ForeignKey(Clase, null=True,blank=True, on_delete=models.CASCADE)
    # clase4 = models.ForeignKey(Clase, null=True,blank=True, on_delete=models.CASCADE)
    # clase5 = models.ForeignKey(Clase, null=True,blank=True, on_delete=models.CASCADE)

    def id_nombre(self):
        return "{}. {}".format(self.id , self.nombre)

    def __str__(self):
        return self.id_nombre()
    
    class Meta:
        verbose_name = 'Curso'
        verbose_name_plural = 'Cursos'
        db_table = 'curso'
        ordering = ['nombre']

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

