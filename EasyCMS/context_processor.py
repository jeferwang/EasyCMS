# coding=utf-8
from django.conf import settings as main_setting
from CMScore.models import Column


# 网站信息
def sitename(request):
	return {
		'sitename': 'EasyCMS',
		'footerinfo':'欢迎使用传说中的EasyCMS！这是一个简洁的、适合您的各种用途的个人网站'
	}


# 栏目列表
def columns(request):
	cols = Column.objects.all()
	return {'columns': cols}


# 设置项
def settings(request):
	return {'settings': main_setting}
