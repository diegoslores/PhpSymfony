# README

## Para qué es este repo?

Este repo plantea una breve introducción al uso del framework symfony, y poner en práctica la introducción del [Getting Started](https://symfony.com/doc/3.4/setup.html) de la documentación oficial de este software.

Se recomienda encarecidamente visionar y practicar con [el material suministrado en la plataforma Symfony Cast](https://symfonycasts.com/screencast/symfony3), que consta de 12 vídeos donde se realiza una breve intro a este framework.

En este repo se tratan aspectos como la **autenticación de usuarios** y uso de **doctrine** que no se trataron en los materiales indicados.

## Requisitos y dependencias

* Composer `v1.8.4` o superior
* PHP `v7.2` o superior
* Symfony `v3.4` exactamente esta versión y sus derivadas (minor versions)


## Lo que se pretende aprender de este ejercicio

* Selección de herramientas de programación
* Patrón Arquitectónico Modelo-Vista-Controlador
* Interacción por shell
* Generación de páginas con Symfony 3.4
* Definición de Controladores con Symfony 3.4
* Usando Servicios con Symfony 3.4 y su contenedor
* Routing con Symfony 3.4
* Motor de plantillas Twig
* Mecanismos de autenticación con Symfony 3.4

## Antes de ponerte a trabajar...

### Haz un fork del repositorio original

Haz un fork del repositorio original y configúralo de forma privada (la actividad propuesta es individual ;)
Habilita las issues e indica que es un proyecto Java.


### Clona el repositorio

```
git clone <url de tu fork>
```


Puedes utilizar otro mecanismo para compilar o empaquetar el programa a través del IDE o a través de otra herramienta.

### Ejecuta el programa

 Sitúate en la carpeta raiz del proyecto y realiza las siguientes operaciones
 
```
composer update
```

Inicializa un server que levante los servicios de symfony utilizando el siguiente comando:

```
# Inicializa el servicio bloqueando la terminal
php bin/console server:run

# Inicializa el servicio en segundo plano
php bin/console server:start
```

### Crea tu rama de trabajo

Crea tu propia rama de trabajo! Crea una nueva rama a partir de master que se llame como el nombre de tu usuario en el curso. Te recuerdo cómo:

```
git checkout -b <usuario>
```

Tu solución final deberá estar apuntada por esta rama. Puedes utilizar todas las ramas que quieras, pero **no trabajes en la master** y asegúrate, si tienes otras ramas que forman parte de tu solución, de combinarlas con tu rama con el nombre de tu usuario.


## Ponte a trabajar

### Se va a realizar un ejemplo de autenticación

En Symfony la seguridad se gestiona a través del fichero `app\config\security.yml` Revisa el estado actual de este fichero.

Lo primero que vas a hacer es crear una página que, accediendo desde la ruta `http:\\<URL>\admin` reponda en texto plano con lo siguiente:

```
Welcome to the admin area
```

Puedes hacerlo manualmente pero asegúrate de también tratar de crear el controlador ayudándote del comando:

```
php bin/console generate:controller
```

Vamos a limitar solo a usuarios autenticados el acceso a esta página de la siguiente forma:

Modifica el fichero `app\config\security.yml`

```
in_memory:
            memory: 
                users:
                    usuario1:
                        password: abc123.
                        roles: 'ROLE_ADMIN'
                    usuario2:
                        password: abc123.
                        roles: 'ROLE_GUEST'
```

Desconmenta la línea `http_basic: ~` y revisa la doc que se indica.

Añade al final del mismo documento estas líneas donde se le da acceso a usuarios con rol admintrador a paths que empiecen con admin.

```
    access_control:
            - { path: ^/admin, roles: ROLE_ADMIN }
    
    # Esta línea indicará cómo se enviará la contraseña desde el cliente al servidor. Se le indica en testo plano.        
    encoders:
        Symfony\Component\Security\Core\User\User: plaintext
```

Accede a `http:\\<URL>\admin` y comprueba el funcionamiento. Prueba con ambos usuarios o crea nuevos. Inspecciona la barra de debug.
comenta las líneas donde se especifica `encoders` y comprueba si sigue funcionando o no.

Finalmente, etiqueta tu versión con la tag `v1.0-nombreUsuario`


## Estrategia de ramificación

Rama					| Uso
------------ 			| -------------
`master`	 			| Evolución del enunciado del ejercicio
`remote\usuario` 	| Evolución de la solución de cada alumno
`solución_x`			| Rama que representa una solución (puede derivar de master u otra rama)

### Changelog de enunciado:

Se irán etiquetando enunciados consolidados y entregados a alumnos:

Tag				| Descripción
------------ 	| -------------
`enum-v1`		| Enunciado inicial

### Snapshot actual del enunciado:

```Shell
.
├── LICENSE
├── README.md
├── app
│   ├── AppCache.php
│   ├── AppKernel.php
│   ├── Resources
│   │   └── views
│   │       ├── base.html.twig
│   │       └── default
│   │           └── index.html.twig
│   └── config
│       ├── config.yml
│       ├── config_dev.yml
│       ├── config_prod.yml
│       ├── config_test.yml
│       ├── parameters.yml.dist
│       ├── routing.yml
│       ├── routing_dev.yml
│       ├── security.yml
│       └── services.yml
├── bin
│   ├── console
│   └── symfony_requirements
├── composer.json
├── composer.lock
├── phpunit.xml.dist
├── src
│   └── AppBundle
│       ├── AppBundle.php
│       └── Controller
│           └── DefaultController.php
├── tests
│   └── AppBundle
│       └── Controller
│           └── DefaultControllerTest.php
├── var
│   ├── SymfonyRequirements.php
│   └── sessions
└── web
    ├── app.php
    ├── app_dev.php
    ├── apple-touch-icon.png
    ├── config.php
    ├── favicon.ico
    └── robots.txt

15 directories, 30 files

```

## Contribution guidelines

* Escribir tests
* Revisión de código

## Who do I talk to?

* Propietario del repo, proferor

_______________________
#Documentación Adicional
_______________________


Symfony Standard Edition
========================

**WARNING**: This distribution does not support Symfony 4. See the
[Installing & Setting up the Symfony Framework][15] page to find a replacement
that fits you best.

Welcome to the Symfony Standard Edition - a fully-functional Symfony
application that you can use as the skeleton for your new applications.

For details on how to download and get started with Symfony, see the
[Installation][1] chapter of the Symfony Documentation.

What's inside?
--------------

The Symfony Standard Edition is configured with the following defaults:

  * An AppBundle you can use to start coding;

  * Twig as the only configured template engine;

  * Doctrine ORM/DBAL;

  * Swiftmailer;

  * Annotations enabled for everything.

It comes pre-configured with the following bundles:

  * **FrameworkBundle** - The core Symfony framework bundle

  * [**SensioFrameworkExtraBundle**][6] - Adds several enhancements, including
    template and routing annotation capability

  * [**DoctrineBundle**][7] - Adds support for the Doctrine ORM

  * [**TwigBundle**][8] - Adds support for the Twig templating engine

  * [**SecurityBundle**][9] - Adds security by integrating Symfony's security
    component

  * [**SwiftmailerBundle**][10] - Adds support for Swiftmailer, a library for
    sending emails

  * [**MonologBundle**][11] - Adds support for Monolog, a logging library

  * **WebProfilerBundle** (in dev/test env) - Adds profiling functionality and
    the web debug toolbar

  * **SensioDistributionBundle** (in dev/test env) - Adds functionality for
    configuring and working with Symfony distributions

  * [**SensioGeneratorBundle**][13] (in dev env) - Adds code generation
    capabilities

  * [**WebServerBundle**][14] (in dev env) - Adds commands for running applications
    using the PHP built-in web server

  * **DebugBundle** (in dev/test env) - Adds Debug and VarDumper component
    integration

All libraries and bundles included in the Symfony Standard Edition are
released under the MIT or BSD license.

Enjoy!

[1]:  https://symfony.com/doc/3.4/setup.html
[6]:  https://symfony.com/doc/current/bundles/SensioFrameworkExtraBundle/index.html
[7]:  https://symfony.com/doc/3.4/doctrine.html
[8]:  https://symfony.com/doc/3.4/templating.html
[9]:  https://symfony.com/doc/3.4/security.html
[10]: https://symfony.com/doc/3.4/email.html
[11]: https://symfony.com/doc/3.4/logging.html
[13]: https://symfony.com/doc/current/bundles/SensioGeneratorBundle/index.html
[14]: https://symfony.com/doc/current/setup/built_in_web_server.html
[15]: https://symfony.com/doc/current/setup.html
