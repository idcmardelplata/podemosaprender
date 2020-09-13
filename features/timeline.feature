Feature: Timeline diario de los usuarios
  Los usuarios pueden escribir post diarios
  donde cuentan que les esta pasando y en que estan trabajando


Escenario:
    Dado que ingrese a la pagina principal de podemosaprender
    Y ya he iniciado sesion
    Cuando navego a  la pagina principal de podemosaprender
    Entonces debo ver una lista de publicaciones diarias de los usuarios.

Escenario:
    Dado que ingrese a la pagina principal de podemosaprender
    Pero no he iniciado sesion
    Entonces el sistema me debe redirigir a la pagina de iniciar sesion.
