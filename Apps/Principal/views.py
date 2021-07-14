from django.shortcuts import render, redirect
from .models import Clase, Curso, Alumnos

def home(request):
    clasesListadas=Clase.objects.all().order_by('id')
    cursosListados=Curso.objects.all().order_by('nombre')
    alumnosListados=Alumnos.objects.all().order_by('cursoMatriculado')

    data = {
        'titulo': 'Gestión de Clases',
        'cursos': cursosListados,
        'clases': clasesListadas,
        'alumnos': alumnosListados
    }

    return render(request,"gestionClases.html", data)

def eliminar_clase(request, id):
    clase = Clase.objects.get(id=id)
    clase.delete()
    return redirect('/')

def eliminar_curso(request, id):
    curso = Curso.objects.get(id=id)
    curso.delete()
    return redirect('/')

def eliminar_alumno(request, id):
    alumno = Alumnos.objects.get(id=id)
    alumno.delete()
    return redirect('/')

def registrar_clase(request):
    ide = request.POST['numId']
    nombre = request.POST['txtNombre']
    creditos = request.POST['numCreditos']
    email = request.POST['mailemail']
    tipo = request.POST['tipoclase']
    modalidad = request.POST['tipomodalidad']

    clase=Clase.objects.create(id=ide, nombre=nombre, creditos=creditos, descripcion=email, tipo=tipo, modalidad=modalidad)
    return redirect('/')

def registrar_curso(request):
    ide = request.POST['numId']
    nombre = request.POST['txtNombre']
    perfil = request.POST['txtPerfil']
    descripcion = request.POST['txtDescripcion']
    duracion = request.POST['numDuracion']
    


    curso=Curso.objects.create(id=ide, nombre=nombre, perfil=perfil, descripcion=descripcion, duracion=duracion)
    return redirect('/')

def registrar_alumno(request):
    ide = request.POST['numId']
    nombre = request.POST['txtNombre']
    apellido = request.POST['txtApellido']
    email = request.POST['email']
    cursoMatriculado = int(request.POST['cursoMatriculado'])
    clasesVistas = request.POST['clasesVistas']

    clase=Alumnos.objects.create(id=ide, nombre=nombre, apellido=apellido, correo=email, cursoMatriculado_id=cursoMatriculado, clasesVistas=clasesVistas)
    return redirect('/')