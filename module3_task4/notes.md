Ahora que el equipo de operaciones se siente más seguro para implementar la aplicación, desea abordar la colaboración "entre equipos".

Como lo subrayaron los miembros de su equipo, a menudo hay confirmaciones enviadas a la rama principal que están fallando en las pruebas o ¡ni siquiera se están construyendo!s

Realmente no es un problema ya que sus colegas son bastante responsables y solucionan el problema en los próximos minutos, siguiendo los preceptos de Integración Continua. Pero hace que los otros desarrolladores pierdan el tiempo preguntándose si su propio trabajo presenta el problema de si es de otra persona.

Se espera que introduzca un nuevo proceso de colaboración mediante GitHub Pull Request:
	* En lugar de enviar código a la rama principal, se espera que los desarrolladores abran solicitudes de incorporación de cambios.
	* Una solicitud de extracción solo se puede fusionar si el flujo de trabajo asociado se ejecuta correctamente

Cree un nuevo flujo de trabajo llamado module3_task4 (a partir del contenido de module3_task3) que se activaría mediante una solicitud de extracción (además de los activadores existentes). Debería comportarse de la misma manera en una solicitud de extracción que cuando se desencadena por un cambio de código.

Además, se espera que automatice la creación de un registro de cambios para los lanzamientos, utilizando Release Drafter en un segundo flujo de trabajo llamado release_drafter que debería:

	* Genere un registro de cambios basado en los títulos de la Solicitud de extracción fusionada, desde la versión anterior
	* Escriba este registro de cambios en un "borrador de versión de GitHub"
	* Estar vinculado al directorio de la tarea actual (mismo patrón que el archivo github-workflow.yml)
	* Be configured through the default .github/release_drafter.yml
	* Run on ubuntu-18.04

Entonces, en lugar de crear una nueva etiqueta git y enviarla, el proceso de lanzamiento podría simplificarse a:
	* Edite el "borrador de versión" y guárdelo como una nueva versión, dándole un nombre (digamos 1.0.1)
	* Luego, se crearía una etiqueta 1.0.1, lo que desencadenaría un flujo de trabajo
	* En caso de éxito, el flujo de trabajo de "lanzamiento" actualizaría el lanzamiento de GitHub agregando el archivo generado y el archivo DEPLOY.md como un archivo adjunto.

# Requirements

Same requirements as the previous module:

	* A valid Hugo website
	* Makefile with the same targets, including help
 	* Documentation (README.md , DEPLOY.mdand Makefile) is up-to-date with the project state

The files .github/workflows/module3_task4.yml and .github/workflows/release_drafter.yml must be present, valid GitHub action workflows and linked to the current task’s directory:

El flujo de trabajo denominado module3_task4 debe comportarse igual que el flujo de trabajo anterior, excepto que también se activa mediante solicitudes de incorporación de cambios.

Abrir una solicitud de extracción con un cambio importante debería fallar en el flujo de trabajo y un cambio válido debería tener éxito en el flujo de trabajo.

Se debe crear una nueva versión 1.0.1 con al menos 1 cambio de una solicitud de extracción fusionada con:
	* Los archivos awesome-website.zip y DEPLOY.md adjuntos al lanzamiento
	* El contenido del cuerpo del comunicado debe ser generado por release_drafter


