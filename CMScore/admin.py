from django.contrib import admin
from .models import Column, Article


class ColumnAdmin(admin.ModelAdmin):
	list_display = ('sort','name', 'slug', 'intro', 'home_display', 'nav_display')


class ArticleAdmin(admin.ModelAdmin):
	list_display = ('title', 'slug', 'author', 'published', 'pub_date', 'update_time')


admin.site.register(Column, ColumnAdmin)
admin.site.register(Article, ArticleAdmin)
