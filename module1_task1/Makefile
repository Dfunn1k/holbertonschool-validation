# define lifecycle
build:
	hugo
clean:
	rm -rf dist/*
post:
	hugo new posts/$(POST_NAME).md
	sed -i '0,/title/s/.*title.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
