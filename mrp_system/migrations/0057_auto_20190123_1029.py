# Generated by Django 2.1.2 on 2019-01-23 10:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mrp_system', '0056_auto_20190122_1952'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='field',
            name='mouser_name',
        ),
        migrations.RemoveField(
            model_name='part',
            name='integer1',
        ),
        migrations.RemoveField(
            model_name='part',
            name='integer2',
        ),
        migrations.AlterField(
            model_name='field',
            name='fields',
            field=models.CharField(choices=[('char1', 'Character 1'), ('char2', 'Character 2'), ('char3', 'Character 3'), ('char4', 'Character 4'), ('char5', 'Character 5'), ('char6', 'Character 6'), ('char7', 'Character 7'), ('char8', 'Character 8'), ('char9', 'Character 9'), ('char10', 'Character 10'), ('char11', 'Character 11'), ('char12', 'Character 12'), ('char13', 'Character 13'), ('char14', 'Character 14'), ('char15', 'Character 15'), ('char16', 'Character 16'), ('char17', 'Character 17'), ('char18', 'Character 18'), ('char19', 'Character 19'), ('char20', 'Character 20')], max_length=50),
        ),
    ]
