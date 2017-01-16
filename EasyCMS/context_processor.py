from django.conf import settings as main_setting
from CMScore.models import Column


# 网站名称
def sitename(request):
	return {'sitename': 'EasyCMS'}


# 栏目列表
def columns(request):
	cols = Column.objects.all()
	return {'columns': cols}


# 设置项
def settings(request):
	return {'settings': main_setting}
