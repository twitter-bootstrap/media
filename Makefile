
build: components media.css
	@component build --dev

components: component.json
	@component install --dev

media.css: media.less
	@lessc media.less >media.css

clean:
	rm -fr build components template.js

.PHONY: clean
