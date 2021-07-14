# Generated by Django 3.2 on 2021-07-14 13:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Principal', '0003_auto_20210714_0807'),
    ]

    operations = [
        migrations.CreateModel(
            name='Alumnos',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
                ('apellido', models.CharField(max_length=100)),
                ('correo', models.EmailField(max_length=500)),
                ('clasesVistas', models.IntegerField()),
                ('cursoMatriculado', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='Principal.curso')),
            ],
            options={
                'verbose_name': 'Alumno',
                'verbose_name_plural': 'Alumnos',
                'db_table': 'alumnos',
                'ordering': ['nombre'],
            },
        ),
    ]
