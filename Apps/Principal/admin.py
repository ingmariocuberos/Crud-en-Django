from django.contrib import admin
from .models import Clase, Curso

@admin.register(Clase)
class CursoAdmin(admin.ModelAdmin):
    list_display = ('id', 'nombre', 'creditos', 'descripcion', 'tipo', 'modalidad')
    list_editable = ('nombre', 'creditos', 'descripcion', 'tipo', 'modalidad')

admin.site.register(Curso)

