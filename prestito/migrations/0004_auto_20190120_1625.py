# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-01-20 15:25
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('prestito', '0003_auto_20181219_1533'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='password',
            field=models.CharField(max_length=500),
        ),
    ]
