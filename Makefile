all: www/css/bootstrap.css

%.css: %.less
	./node_modules/.bin/lessc $< $@

dist/reviews.xml:  reviews/parser.xsl reviews/facebook_reviews.html
	xsltproc -o $@--html $^

site.html: site.xsl index.xml
	xsltproc -o $@ $^
