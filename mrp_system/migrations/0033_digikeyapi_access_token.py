# Generated by Django 2.1.2 on 2018-12-28 16:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mrp_system', '0032_remove_digikeyapi_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='digikeyapi',
            name='access_token',
            field=models.CharField(default='d', max_length=150),
            preserve_default=False,
        ),
    ]
