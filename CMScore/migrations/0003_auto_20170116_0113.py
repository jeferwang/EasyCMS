# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-01-15 17:13
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CMScore', '0002_auto_20170116_0112'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='pub_date',
            field=models.DateTimeField(default='2017-01-16 01:13:31', verbose_name='发布时间'),
        ),
        migrations.AlterField(
            model_name='article',
            name='update_time',
            field=models.DateTimeField(default='2017-01-16 01:13:31', verbose_name='更新时间'),
        ),
    ]
