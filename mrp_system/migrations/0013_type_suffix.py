# Generated by Django 2.1.2 on 2018-12-06 19:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mrp_system', '0012_auto_20181206_1227'),
    ]

    operations = [
        migrations.AddField(
            model_name='type',
            name='suffix',
            field=models.CharField(default='RES', max_length=3),
            preserve_default=False,
        ),
    ]
