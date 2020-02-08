all: dist/site.css dist/reviews.xml

dist/site.css: site.less
	./node_modules/.bin/lessc $< > $@

dist/reviews.xml:  reviews/parser.xsl reviews/facebook_reviews.html
	xsltproc --html $^ > $@
