# Generated by Django 3.2 on 2021-07-14 01:18

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Clase',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
                ('creditos', models.PositiveSmallIntegerField()),
                ('descripcion', models.EmailField(max_length=500)),
                ('tipo', models.CharField(max_length=30)),
                ('modalidad', models.CharField(max_length=30)),
            ],
        ),
    ]
