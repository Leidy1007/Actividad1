//Selecciona el nombre1, apellido1, identificacion de  las conductoras mayores de 30 años://
SELECT nombre1, apellido1, identificacion FROM conductora WHERE edad>21

//Selecciona el id de alimentadoras con modelo 2016//
select id from alimentadora where modelo=2016

//Selecciona el nombre1, apellido1 de las conductoras que su dirección sea Mocarí://
Select nombre1, apellido1 from conductora where direccion='Mocarí'

//Selecciona el nombre1, apellido1, identificacion de las conductoras que su nombre termine por n://
select nombre1, apellido1, identificacion from conductora  where nombre1 LIKE'%i'

//Selecciona la identificación de pasajeros que su nombre empiece por la letra j://
Select identificacion from pasajeros  where nombre1 LIKE 'j%

//Selecciona el nombre1, apellido, identificación de pasajeros que sean mayores de edad://
Select nombre1, apellido1, identificacion from pasajeros where edad>17

//Selecciona el modelo de la alimentadora tenga una matricula “1042DC”://
select modelo from alimentadora where matricula='1042DC'

//Selecciona el id del tike con codigo 1232//
select id from tike where codigo=1232

//Selecciona nombre1, apellido1 de pasajeros cuya dirección sea La Virgencita//
Select nombre1, apellido1 from pasajeros
   where direccion='La Virgencita'