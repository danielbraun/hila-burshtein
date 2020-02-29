all: dist/bootstrap.css dist/reviews.xml hila_burshtein.vcf.xml

dist/bootstrap.css: bootstrap.less
	./node_modules/.bin/lessc $< $@

dist/reviews.xml:  reviews/parser.xsl reviews/facebook_reviews.html
	xsltproc --html $^ > $@

%.vcf.xml: %.vcf
	clj -m vcard2xcard < $< > $@
