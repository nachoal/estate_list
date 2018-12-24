# README

Test project for easybroker interview process.

Proyecto en producción en https://ia-estate.herokuapp.com

El archivo seeds.rb y fetch_info_script_job.rb son los que se encargan de hacer 'parse' al archivo XML y de traducir del XML a mi modelo Property. 

Pueden ver el schema visualmente usando el archivo db/SCHEMA_V2.XML

El proyecto está hospedado en Heroku y de acuerdo a las especificaciones que me enviaron estoy usando heroku cron jobs para correr el archivo fetch_info_script_job.rb usando el archivo property.rake en lib/tasks diariamente y descargar la información que hipoteticamente estaría cambiando en el archivo. 

Este archivo es el mismo que seeds.rb y pueden ver su funcionamiento corriento un rails db:seed

Agregué paginación mostrando 10 propiedades por página. 

* Ruby version - 2.4.4
  
##  Configuration

1. Descargar el proyecto a local con git clone
2. Bundle install
3. Yarn install
4. Rails db:create
5. Rails db:migrate
6. Create a .env file and add a Cloudinary key  (it's free)
7. Rails db:seed

##  Services (job queues, cache servers, search engines, etc.)

CLOUDINARY for image storage


## Consideraciones finales

Si tuviera más tiempo agregaría un diseño mejorado en el property show page y un mapa.

También mejoraría el script para no actualizar cada una de las entradas sino revisar las modificaciones y sólo actualizar esas.

Quedo pendiente para cualquier duda en mi correo o celular. 
