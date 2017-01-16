# coding=utf-8
import time

from django.db import models
from django.core.urlresolvers import reverse
from django.utils import timezone
from DjangoUeditor.models import UEditorField
from django.utils.encoding import python_2_unicode_compatible


@python_2_unicode_compatible
class Column(models.Model):
	sort = models.IntegerField('排序', default=100)
	name = models.CharField('栏目名称', max_length=20)
	slug = models.CharField('栏目网址', max_length=255)
	intro = models.TextField('栏目简介', default='',blank=True)
	nav_display = models.BooleanField('导航栏显示', default=False)
	home_display = models.BooleanField('主页显示', default=False)
	
	def __str__(self):
		return self.name
	
	def get_absolute_url(self):
		return reverse('column', args=(self.slug,))
	
	class Meta:
		verbose_name = '栏目'  # 对象名称(单数情况
		verbose_name_plural = '栏目'  # 对象名称(复数情况)
		ordering = ['sort']  # 排序依据

@python_2_unicode_compatible
class Article(models.Model):
	column = models.ManyToManyField(Column, verbose_name='所属栏目')  # 文章所属于哪个栏目,多对多的关系
	title = models.CharField('文章标题', max_length=255)
	slug = models.CharField('文章网址', max_length=255)
	author = models.ForeignKey('auth.User', blank=True, null=True, verbose_name='作者')  # 外键,文章的作者
	content = UEditorField(
			'文章内容',
			height=300,
			width=1024,
			imagePath="uploads/images/",
			filePath="uploads/files/",
			toolbars='besttome',
			default='',
			blank=True
	)
	published = models.BooleanField('正式发布', default=True)
	pub_date = models.DateTimeField('发布时间', default=timezone.now)
	update_time = models.DateTimeField('更新时间', default=timezone.now)
	
	def __str__(self):
		return self.title
	
	def get_absolute_url(self):
		return reverse('article', args=(self.slug,))
	
	class Meta:
		verbose_name = '文章'
		verbose_name_plural = '文章'
