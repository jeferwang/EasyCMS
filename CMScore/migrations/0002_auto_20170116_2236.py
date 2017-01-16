# -*- coding: utf-8 -*-
# Generated by Django 1.10.4 on 2017-01-16 14:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CMScore', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='column',
            name='home_display',
            field=models.BooleanField(default=False, verbose_name=b'\xe4\xb8\xbb\xe9\xa1\xb5\xe6\x98\xbe\xe7\xa4\xba'),
        ),
        migrations.AddField(
            model_name='column',
            name='nav_display',
            field=models.BooleanField(default=False, verbose_name=b'\xe5\xaf\xbc\xe8\x88\xaa\xe6\xa0\x8f\xe6\x98\xbe\xe7\xa4\xba'),
        ),
        migrations.AlterField(
            model_name='article',
            name='pub_date',
            field=models.DateTimeField(default=b'2017-01-16 22:36:03', verbose_name=b'\xe5\x8f\x91\xe5\xb8\x83\xe6\x97\xb6\xe9\x97\xb4'),
        ),
        migrations.AlterField(
            model_name='article',
            name='update_time',
            field=models.DateTimeField(default=b'2017-01-16 22:36:03', verbose_name=b'\xe6\x9b\xb4\xe6\x96\xb0\xe6\x97\xb6\xe9\x97\xb4'),
        ),
    ]