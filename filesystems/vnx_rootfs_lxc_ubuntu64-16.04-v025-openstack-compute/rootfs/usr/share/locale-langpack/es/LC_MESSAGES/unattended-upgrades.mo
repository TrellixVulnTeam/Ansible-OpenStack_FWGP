��    /      �  C                   0     H  "   `  "   �  '   �  -   �     �       $   +      P     q  =   �  o   �  B   ?     �  $   �  $   �     �  "     '   '  /   O       ,   �  '   �  #   �  )     !   7  ?   Y     �  .   �  <   �  9   	     Y	  +   r	     �	     �	     �	  +   �	  ,   
     :
  ,   N
     {
  ?   �
     �
     �
  �  �
  *   �     "     9  6   S  (   �  8   �  A   �     .     G  ?   f  $   �  !   �  L   �  �   :  g   �  $   +  0   P  $   �     �  !   �  9   �  V        q  >   �  #   �  '   �  6     +   H  >   t  !   �  @   �  F     E   ]  )   �  J   �          +     C  E   b  >   �     �  ?      &   @  V   g  )   �     �                %   $                                      '                       -   +               ,   "      #   
                            !                                &   )   *   (          .      /                   	           All upgrades installed Allowed origins are: %s An error occurred: '%s' Auto-removing the packages failed! Cache has broken packages, exiting Cache lock can not be acquired, exiting Download finished, but file '%s' not there?!? Error message: '%s' GetArchives() failed: '%s' Giving up on lockfile after %s delay Initial blacklisted packages: %s Installing the upgrades failed! Lock could not be acquired (another package manager running?) No '/usr/bin/mail' or '/usr/sbin/sendmail',can not send mail. You probably want to install the 'mailx' package. Package '%s' has conffile prompt and needs to be upgraded manually Package installation log: Packages that are auto removed: '%s' Packages that attempted to upgrade:
 Packages that were upgraded:
 Packages that will be upgraded: %s Packages were successfully auto-removed Packages with upgradable origin but kept back:
 Progress: %s %% (%s) Running unattended-upgrades in shutdown mode Simulation, download but do not install Starting unattended upgrades script The URI '%s' failed to download, aborting Unattended upgrade returned: %s

 Unattended-upgrade in progress during shutdown, sleeping for 5s Unattended-upgrades log:
 Unclean dpkg state detected, trying to correct Upgrade in minimal steps (and allow interrupting with SIGINT Warning: A reboot is required to complete this upgrade.

 Writing dpkg log to '%s' You need to be root to run this application [package on hold] [reboot required] dpkg --configure -a output:
%s dpkg returned a error! See '%s' for details dpkg returned an error! See '%s' for details error message: '%s' make apt/libapt print verbose debug messages package '%s' not upgraded package '%s' upgradable but fails to be marked for upgrade (%s) print debug messages print info messages Project-Id-Version: unattended-upgrades 0.79
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-02-21 04:07+0000
PO-Revision-Date: 2016-02-22 03:10+0000
Last-Translator: Adolfo Jayme <fitoschido@gmail.com>
Language-Team: Debian l10n Spanish <debian-l10n-spanish@lists.debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2016-06-27 17:52+0000
X-Generator: Launchpad (build 18115)
Language: es
 Se han instalado todas las actualizaciones Fuentes permitidas: %s Ocurrió un error: «%s» Falló la desinstalación automática de los paquetes. La caché tiene paquetes rotos, saliendo No se puede establecer el bloqueo de la caché, saliendo La descarga ha finalizado, pero no se encuentra el fichero «%s» Mensaje de error: «%s» Fallo de GetArchives(): «%s» Finalizando el bloqueo del fichero después de un retraso de %s Paquetes inicialmente bloqueados: %s Fallo al instalar actualizaciones No se puede establecer el bloqueo (¿otro gestor de paquetes ejecutándose?) No existe «/usr/bin/mail» o «/usr/sbin/sendmail», no se puede enviar correo. Es posible que tenga que instalar el paquete «mailx». El paquete «%s» solicita confirmación a través de un conffile, y se debe actualizar de forma manual Registro de instalación de paquete: Paquetes eliminados de forma automática: «%s» Paquetes que se intenta actualizar:
 Paquetes actualizados:
 Paquetes que se actualizarán: %s Los paquetes se desinstalaron automáticamente con éxito Paquetes con una actualización disponible en la fuente pero que no se actualizarán:
 Progreso: %s %% (%s) Ejecutando actualizaciones sin supervisión en modo de apagado Simulacro, descarga pero no instala Iniciando script de unattended-upgrades Fallo al descargar desde el URI «%s», interrumpiendo Valor devuelto por unattended-upgrade: %s

 Unattended-upgrade en proceso durante el apagado, esperando 5s Registro de unattended-upgrades:
 Se ha detectado un estado no limpio de dpkg, intentando corregir Actualizar en pequeños pasos (y permitir la interrupción con SIGINT) Advertencia: Se requiere reinciar para completar la actualización.

 Escribiendo el registro de dpkg en «%s» Necesita tener privilegios de administrador para ejecutar esta aplicación [paquete retenido] [se necesita reiniciar] dpkg --configure -a output:
%s Se ha detectado un fallo de dpkg. Para más detalles, consulte «%s» dpkg devolvió un error. Consulte «%s» para obtener detalles Mensaje de fallo: «%s» hacer que apt/libapt muestre mensajes de depuración detallados No se ha actualizado el paquete «%s» El paquete «%s» es actualizable, pero no se puede marcar para la actualización (%s) Mostrar mensajes de depuración de fallos mostrar mensajes informativos 