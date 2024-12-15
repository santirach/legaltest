# legaltest
Este proyecto tiene 2 rama UAT Y PRODUCCION

la idea es cuando se crea un PR y se hace merge en alguna de esas ramas se dispara un ci/cd que desplegara los cambios echos en el index.html en los recursos de aws 


main: https://github.com/santirach/legaltest
test branch: https://github.com/santirach/legaltest/tree/UAT
prod branch: https://github.com/santirach/legaltest/tree/Produccion

las url para acceder a los servicios son:
prod blue: http://legal-prod-91511078.us-east-1.elb.amazonaws.com:80/ o http://legal-prod-91511078.us-east-1.elb.amazonaws.com/
prod green: http://legal-prod-91511078.us-east-1.elb.amazonaws.com:85/

test blue: http://legal-alb-2046612139.us-east-1.elb.amazonaws.com:80/ o http://legal-alb-2046612139.us-east-1.elb.amazonaws.com/
test green:  http://legal-alb-2046612139.us-east-1.elb.amazonaws.com:85/

Recursos utilziados:

Docker
ECR donde se almacena las iamgenes de docker
ECS servicio donde esta corriendo el servicio
CodeDeploy recurso que nos permite trabajar el patron blue/green
ALB 
Target group
Github Action
