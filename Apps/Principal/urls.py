from django.urls import path
from Apps.Principal.views import ClaseListView, eliminar_clase
urlpatterns = [
    path('', ClaseListView.as_view(), name='gestion_clases'),
    path('eliminarClase/<int:id>', eliminar_clase)
]