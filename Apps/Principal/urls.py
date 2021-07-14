from django.urls import path
from django.config import settings
from django.config.urls.static import static
from Apps.Principal.views import home, eliminar_clase, eliminar_curso, eliminar_alumno, registrar_clase, registrar_curso, registrar_alumno
urlpatterns = [
    path('', home),
    path('eliminarClase/<int:id>', eliminar_clase),
    path('eliminarCurso/<int:id>', eliminar_curso),
    path('eliminarAlumno/<int:id>', eliminar_alumno),
    path('registrarClase/', registrar_clase),
    path('registrarCurso/', registrar_curso),
    path('registrarAlumno/', registrar_alumno)
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)