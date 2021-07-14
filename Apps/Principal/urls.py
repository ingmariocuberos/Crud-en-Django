from django.urls import path
from Apps.Principal.views import home, eliminar_clase, registrar_clase, registrar_curso
urlpatterns = [
    path('', home),
    path('eliminarClase/<int:id>', eliminar_clase),
    path('registrarClase/', registrar_clase),
    path('registrarCurso/', registrar_curso)
]