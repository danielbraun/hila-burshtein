all: dist/bootstrap.css dist/reviews.xml

dist/bootstrap.css: bootstrap.less
	./node_modules/.bin/lessc $< $@

dist/reviews.xml:  reviews/parser.xsl reviews/facebook_reviews.html
	xsltproc --html $^ > $@
