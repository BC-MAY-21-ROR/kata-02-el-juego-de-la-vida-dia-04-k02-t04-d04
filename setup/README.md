# Setup

Escribe aquí los pasos para ejecutar/probar tu proyecto y el nombre de los integrantes de tu equipo

# Ejecución del código

Para poder ejecutar el programa tras haber hecho un clon directamente del repositorios es necesario el tener instaladas las gemas, para lo cual vamos a hacer uso de:

`bundle install`

Tras haber ejecutado eso se van a instalar las gemas que se encuentran dentro de Gemfile, que deben ser la gema de *rspec*, *rubycritic*, *rake*, *rubycritic-small-badge* y *rexml*.
En caso de que estas no se instalen se puede hacer manualmente dentro de la consola con:

`gem install gem_name`

Para ejecutar el código completo basta con hacer uso del comando 'ruby' dirigido al archivo 'main.rb'.

`ruby lib/main.rb`

En caso de querer checar las pruebas, ya con la gema de 'rspec' instalada basta con hacer uso de:

`rspec spec/file_spec.rb`

En lugar de file va a ser el nombre del archivo spec a probar.

En caso de querer ver la calificación proporcionada por RubyCritic o querer que vuelva a hacer un análisis ejecutaremos:

`bundle exec rake`

Lo cual va a checar las direcciones ubicadas dentro de Rakefile, las cuales van directamente a 'lib/*.rb' y a 'spec/*.rb'




## Integrantes: 
- Javier Ismael Sampablo Cuevas
- Martín Mojica Torres
- Iglesias Jimenez Severo
