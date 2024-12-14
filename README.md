# legaltest
Este proyecto tiene 2 rama UAT Y PRODUCCION

la idea es cuando se crea un PR y se hace merge en alguna de esas ramas se dispara un ci/cd que desplegara los cambios echos en el index.html en los recursos de aws 


dns de test: http://legal-alb-2046612139.us-east-1.elb.amazonaws.com/
dns de prod: http://legal-prod-91511078.us-east-1.elb.amazonaws.com/

en aws se hizo uso de los recursos como 

ECR: para almacenar la imagen de docker
ECS: para la creacion de task, servicio y cluster donde estara corriendo el servicio
ECR: donde se alamacenara la imagenes de dcoker y sus versiones
ALB: alb para mediante de el se redirige el trafico a un target group u a otro dependidendo del peso se colo 50 para blue y 50 para green

para activar el ci/cd crear un rama a partir de UAT para tsest o apartir de PRODUCCION para prod
