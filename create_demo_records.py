# coding=utf-8
from EasyCMS.wsgi import *
from CMScore.models import Column, Article


def main():
	columns_urls = [
		('体育新闻', 'sport'),
		('社会新闻', 'society'),
		('科技新闻', 'science'),
		('国外新闻', 'foreign'),
	]
	j = 0
	for column_name, url in columns_urls:
		j += 1
		c = Column.objects.get_or_create(name=column_name, slug=url)[0]
		for i in range(1, 11):
			article = Article.objects.get_or_create(
					title='{}_{}'.format(column_name, i),
					slug='article_{}_{}'.format(j, i),
					content='新闻详细内容:{}_{}'.format(column_name, i)
			)[0]
			article.column.add(c)


if __name__ == '__main__':
	main()
	print('结束!')
