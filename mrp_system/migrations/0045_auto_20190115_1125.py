# Generated by Django 2.1.2 on 2019-01-15 11:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mrp_system', '0044_auto_20190115_1105'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='component_product',
            field=models.ManyToManyField(related_name='_product_component_product_+', through='mrp_system.ProductAmount', to='mrp_system.Product'),
        ),
    ]
