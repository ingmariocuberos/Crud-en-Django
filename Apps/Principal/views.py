# from django.http import HttpResponse
from django.shortcuts import render, redirect
from .models import Clase
from django.views.generic import ListView

def home(request):
    clasesListadas=Clase.objects.all().order_by('nombre')

    data = {
        'titulo': 'Gestión de Clases',
        'clases': clasesListadas
    }


    return render(request,"gestionClases.html", data)

class ClaseListView(ListView):
    model = Clase
    template_name = 'gestionClases.html'

    def get_queryset(self):
        return Clase.objects.all()

def eliminar_clase(request, id):
    clase = Clase.objects.get(id=id)
    clase.delete()
    return redirect('/')

