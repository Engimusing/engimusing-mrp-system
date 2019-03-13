# Generated by Django 2.1.2 on 2018-12-07 01:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mrp_system', '0018_auto_20181206_1500'),
    ]

    operations = [
        migrations.AlterField(
            model_name='field',
            name='fields',
            field=models.CharField(choices=[('char1', 'Character 1'), ('char2', 'Character 2'), ('char3', 'Character 3'), ('char4', 'Character 4'), ('char5', 'Character 5'), ('char6', 'Character 6'), ('char7', 'Character 7'), ('char8', 'Character 8'), ('integer1', 'Integer 1'), ('integer2', 'Integer 2')], max_length=50),
        ),
        migrations.AlterField(
            model_name='field',
            name='name',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='location',
            name='name',
            field=models.CharField(max_length=100),
        ),
        migrations.AlterField(
            model_name='part',
            name='char1',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AlterField(
            model_name='part',
            name='char2',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AlterField(
            model_name='part',
            name='char3',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AlterField(
            model_name='part',
            name='char4',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AlterField(
            model_name='part',
            name='char5',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AlterField(
            model_name='part',
            name='char6',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AlterField(
            model_name='part',
            name='char7',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AlterField(
            model_name='part',
            name='char8',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]
