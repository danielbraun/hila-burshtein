all: dist/bootstrap.css dist/reviews.xml site.html

dist/bootstrap.css: bootstrap.less
	./node_modules/.bin/lessc $< $@

dist/reviews.xml:  reviews/parser.xsl reviews/facebook_reviews.html
	xsltproc --html $^ > $@

site.html: site.xsl index.xml
	xsltproc $^ > $@
