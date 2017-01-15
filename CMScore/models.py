from django.db import models


# Create your models here.
class Column(models.Model):
	name = models.CharField('栏目名称', max_length=20)
	slug = models.CharField('栏目网址', max_length=255)
	intro = models.TextField('栏目简介', default='')
	
	def __str__(self):
		return self.name
	
	class Meta:
		verbose_name = '栏目'  # 对象名称(单数情况
		verbose_name_plural = '栏目'  # 对象名称(复数情况)
		ordering = ['name']  # 排序依据


class Article(models.Model):
	column = models.ManyToManyField(Column, verbose_name='所属栏目')  # 文章所属于哪个栏目,多对多的关系
	title = models.CharField('文章标题', max_length=255)
	slug = models.CharField('文章网址', max_length=255)
	author = models.ForeignKey('auth.User', blank=True, null=True, verbose_name='作者')  # 外键,文章的作者
	content = models.TextField('文章内容', default='', blank=True)
	published = models.BooleanField('正式发布', default=True)
	
	def __str__(self):
		return self.title
	
	class Meta:
		verbose_name = '文章'
		verbose_name_plural = '文章'
