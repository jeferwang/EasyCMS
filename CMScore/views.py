# coding=utf-8
from django.http import HttpResponse
from django.shortcuts import render
from .models import Column, Article


# 首页
def index(request):
	return render(request, 'CMScore/index.html')


# 栏目
def column(request, column_slug):
	try:
		c = Column.objects.get(slug=column_slug)
	except:  # 获取不到栏目
		return HttpResponse('{} Not Found'.format(column_slug))
	return render(request, 'CMScore/column.html', {
		'column': c
	})


# 文章
def article(request, article_slug):
	try:
		a = Article.objects.get(slug=article_slug)
	except:  # 获取不到文章
		return HttpResponse('{} Not Found'.format(article_slug))
	return render(request, 'CMScore/article.html', {
		'article': a
	})
