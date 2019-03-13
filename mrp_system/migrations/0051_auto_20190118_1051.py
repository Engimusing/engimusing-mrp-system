# Generated by Django 2.1.2 on 2019-01-18 10:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mrp_system', '0050_auto_20190115_1849'),
    ]

    operations = [
        migrations.AlterField(
            model_name='manufacturerrelationship',
            name='partNumber',
            field=models.CharField(blank=True, max_length=40, unique=True),
        ),
        migrations.AlterUniqueTogether(
            name='part',
            unique_together={('description', 'char1', 'char2')},
        ),
    ]
