all: dist/bootstrap.css dist/reviews.xml dist/fonts hila_burshtein.vcf.xml

dist/bootstrap.css: bootstrap.less
	./node_modules/.bin/lessc $< $@

dist/reviews.xml:  reviews/parser.xsl
	curl 'https://www.facebook.com/Hila-Burshtein-162731901343398/reviews' \
	    -H 'cookie: dpr=2; wd=1280x643;' \
	    | xsltproc --html $< - \
	    | tidy -xml -i \
	    > $@

dist/fonts: node_modules/bootstrap/fonts
	cp -R $< $@

%.vcf.xml: %.vcf
	clj -m vcard2xcard < $< > $@
