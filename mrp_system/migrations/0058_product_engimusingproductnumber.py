# Generated by Django 2.1.2 on 2019-01-24 12:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mrp_system', '0057_auto_20190123_1029'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='engimusingProductNumber',
            field=models.CharField(blank=True, max_length=50),
        ),
    ]
