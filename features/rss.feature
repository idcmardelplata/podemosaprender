Feature: Envio de post y notificaciones cada x tiempo

  Los usuarios pueden configurar cada cuanto tiempo quieren recibir
  las menciones y los post de los demas usuarios.
  Para no tener que estar conectados todo el tiempo a la plataforma.

Escenario:
    Dado que he configurado que quiero recibir notificaciones a las "<14:30>" y a las "<20:50>"
    Cuando se cumple sean las "<14:30>" y las "<20:50>"
    Entonces el sistema me enviara una "<Notificacion>" al escritorio o al email para que yo pueda leer todos los mensajes y post del dia

    Ejemplos: Notificacion
      | Time  | Notificacion                    |
      | 14:30 | "Tienes nuevas notificaciones"  |
      | 20:50 | "Tienes nuevas notificaciones"  |

Escenario:
    Dado que no he configurado el sistema de notificaciones
    Entonces el sistema no me debe enviar ninguna notificacion.
