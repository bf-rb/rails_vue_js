APP_NAME=rails_vue_js_rails6

build:
	docker build -t $(APP_NAME) .
bash:
	docker run --rm -it $(APP_NAME) bash
run:
	docker run --rm -it -p 3000:3000 $(APP_NAME)