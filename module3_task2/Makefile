build: ## Generate the website from the markdown and configuration files in the directory dist/.
	hugo

clean: ## Cleanup the content of the directory dist/.
	rm -rf dist/*
	rm awesome-website.zip

post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	hugo new posts/$(POST_NAME).md
	sed -i '0,/title/s/.*title.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

package: ## produces a file awesome-website.zip that containing the dist/ directory
	make build
	zip -r awesome-website.zip dist/

lint: ## lint format
	markdownlint README.md DEPLOY.md

help: ## Show this help usage
	@awk '/[^#]*##[^#]*/{printf "%s %s\n", $$1, substr($$0, index($$0,"##")+2)}' Makefile | head -n -1
