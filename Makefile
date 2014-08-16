default: deploy

deploy:
	rsync -r _site/ catern@catern.com:/var/www/catern.com/
