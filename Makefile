migrate:
	docker-compose run web python manage.py makemigrations 
	docker-compose run web python manage.py migrate auth 
	docker-compose run web python manage.py migrate

requirements:
	docker-compose run web pip install -r requirements.txt

statics:
	docker-compose run web python manage.py collectstatic --no-input

superuser:
	docker-compose run web python manage.py createsuperuser 

clean:
	rm -rf */migrations/00**.py
	find . -name "*.pyc" -exec rm -rf  -- {} +
	find . -name "*__pycache__" -exec rm -rf  -- {} +

test:
	docker-compose run web python manage.py test

run:
	docker-compose run web python manage.py runserver 0.0.0.0:8000

delete-all:
	docker-compose down -v
	sudo rm -rf .pgdata/


