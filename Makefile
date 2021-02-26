container_name = esdesign_drupal9

start:
	docker run \
	  --volume=${PWD}/local/data:/var/lib/mysql \
	  --volume=${PWD}/local:/var/www/html \
	  -p 80:80 \
	  -p 3306:3306 \
		-d \
		--name ${container_name} \
	  ricardoamaro/drupal9

logs:
	docker logs -f ${container_name}

shell:
	docker exec -ti ${container_name} sh

stop:
	docker stop ${container_name}

destroy:
	docker rm ${container_name}
