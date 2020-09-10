![img](https://scontent.faep8-1.fna.fbcdn.net/v/t1.0-9/s960x960/65663114_10156804470833778_4104841480491761664_o.jpg?_nc_cat=103&_nc_sid=825194&_nc_ohc=wTlbj9-UQosAX-tCsg1&_nc_ht=scontent.faep8-1.fna&_nc_tp=7&oh=61929c8ea3d09e6945fb6bffe46f9931&oe=5F5BEE96)

# Podemosaprender

PodemosAprender es una comunidad donde nos reunimos para practicar en persona o a través de internet.

PodemosAprender para conseguir un trabajo mejor, para conseguir clientes y para crecer como personas

PodemosAprender a programar, a vender, a organizar, a hacer negocios
Y puede ser usando javascript, usando java, usando vue, usando react, usando python, usando gnu linux etc...

Pero sólo PodemosAprender si cada dia nuestras acciones nos hacen avanzar y no retroceder,
si logramos ejecutar proyectos y conseguir resultados, y conectamos con un equipo, con la persona justa 

Por eso creamos esta comunidad y la forma de organizarla con las personas que queremos ver crecer en mente.

¿Te contamos cómo hacer para participar?

¿pero que diferencia hay con hacer cursos?
El foco en desarrollar una red amplia de personas con intereses, formación, contactos y nivel socio económico diversos
pero que practica una forma de trabajar bien juntas y ayudarse
porque solamente ganan personas distintas que pueden trabajar bien juntas.

¿pero como vamos a ganar mas en la practica?

si logramos pasar de personas sueltas a coordinadas por estandares
si logramos personas que trabajen juntas para lograr cosas que sirven y se pagan
si logramos conectar gente distinta que se complementa para crear productos servicios y empresas valoradas.

Este proyecto es la red social de PodemosAprender.

Para ejecutarlo debemos cumplir un par de requisitos:
1) Tener instalado Elixir, (lo podemos instalar siguendo las instrucciones en la web https://elixir-lang.org/install.html )
2) Tener instalado git (opcional)
2) Tener una base de datos postgresql instalada y en ejecucion, para ello tenemos varias maneras:

   * Instalar normalmente la base de datos siguendo las instrucciones de la pagina oficial (https://www.postgresql.org/)
   * Si contamos con docker instalado podemos ejecutarla dentro de un contenedor con el comando:
   * `docker run --name postgres -p:5432:5432 -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres -d postgres`

Una vez que ya contamos con los requisitos basicos podemos clonarlo haciendo un
`git clone https://gitlab.com/idcmardelplata/podemosaprender.git`

O simplemente descargando el codigo desde [aqui](https://gitlab.com/idcmardelplata/podemosaprender/-/archive/master/podemosaprender-master.zip).

Una vez que ya se tenga el codigo podemos iniciar la aplicacion en local entrando en el directorio `podemosaprender` y ejecutando el comando:
```bash
mix deps.get && mix setup && mix phx.server
```

Esto descargara las dependencias necesarias, configurara y ejecutara todas las migraciones de la base de datos
y ejecutara el servidor. 

Para verla solamente tenemos que ingresar a http://localhost:4000

