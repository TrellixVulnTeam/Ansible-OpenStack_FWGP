��            )         �     �  <   �  >   
  �  I     �            S   1     �     �     �     �     �  "   �  1   !  
   S     ^  F   s     �     �  &   �  =     T   F  �  �     �      �  3   �  r     \   u  "   �  �  �  )   �  D     G   I    �     �     �  $   �  n   �  #   `  2   �      �     �  !   �  !     A   7     y     �  X   �  &      "   '  -   J  C   x  \   �  V       p"  '   �"  A   �"  �   �"  �   �#  !   $                              	              
                                                                                            

Found a referral to %s.

 
Querying for the IPv4 endpoint %s of a 6to4 IPv6 address.

 
Querying for the IPv4 endpoint %s of a Teredo IPv6 address.

       -m, --method=TYPE     select method TYPE
      -5                    like --method=md5
      -S, --salt=SALT       use the specified SALT
      -R, --rounds=NUMBER   use the specified NUMBER of rounds
      -P, --password-fd=NUM read the password from file descriptor NUM
                            instead of /dev/tty
      -s, --stdin           like --password-fd=0
      -h, --help            display this help and exit
      -V, --version         output version information and exit

If PASSWORD is missing then it is asked interactively.
If no SALT is specified, a random one is generated.
If TYPE is 'help', available methods are printed.

Report bugs to %s.
 %s/tcp: unknown service Available methods:
 Cannot parse this line: %s Catastrophic error: disclaimer text has been changed.
Please upgrade this program.
 Host %s not found. Illegal salt character '%c'.
 Interrupted by signal %d... Invalid method '%s'.
 Invalid number '%s'.
 Method not supported by crypt(3).
 No whois server is known for this kind of object. Password:  Query string: "%s"

 This TLD has no whois server, but you can access the whois database at This TLD has no whois server. Timeout. Try '%s --help' for more information.
 Unknown AS number or IP network. Please upgrade this program. Usage: mkpasswd [OPTIONS]... [PASSWORD [SALT]]
Crypts the PASSWORD using crypt(3).

 Usage: whois [OPTION]... OBJECT...

-h HOST, --host HOST   connect to server HOST
-p PORT, --port PORT   connect to PORT
-H                     hide legal disclaimers
      --verbose        explain what is being done
      --help           display this help and exit
      --version        output version information and exit

These flags are supported by whois.ripe.net and some RIPE-like servers:
-l                     find the one level less specific match
-L                     find all levels less specific matches
-m                     find all one level more specific matches
-M                     find all levels of more specific matches
-c                     find the smallest match containing a mnt-irt attribute
-x                     exact match
-b                     return brief IP address ranges with abuse contact
-B                     turn off object filtering (show email addresses)
-G                     turn off grouping of associated objects
-d                     return DNS reverse delegation objects too
-i ATTR[,ATTR]...      do an inverse look-up for specified ATTRibutes
-T TYPE[,TYPE]...      only look for objects of TYPE
-K                     only primary keys are returned
-r                     turn off recursive look-ups for contact information
-R                     force to show local copy of the domain object even
                       if it contains referral
-a                     also search all the mirrored databases
-s SOURCE[,SOURCE]...  search the database mirrored from SOURCE
-g SOURCE:FIRST-LAST   find updates from SOURCE from serial FIRST to LAST
-t TYPE                request template for object of TYPE
-v TYPE                request verbose template for object of TYPE
-q [version|sources|types]  query specified server info
 Using server %s.
 Version %s.

Report bugs to %s.
 Warning: RIPE flags used with a traditional server. Wrong salt length: %d byte when %d <= n <= %d expected.
 Wrong salt length: %d bytes when %d <= n <= %d expected.
 Wrong salt length: %d byte when %d expected.
 Wrong salt length: %d bytes when %d expected.
 standard 56 bit DES-based crypt(3) Project-Id-Version: whois 5.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-08 17:14+0000
PO-Revision-Date: 2014-08-03 08:39+0000
Last-Translator: Matías A. Bellone <Unknown>
Language-Team: Debian l10n Spanish <debian-l10n-spanish@lists.debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2016-06-27 17:22+0000
X-Generator: Launchpad (build 18115)
Language: es
 

Se ha encontrado una referencia a %s.

 
Consultando el punto final IPv4 de %s de una dirección IPv6 6a4.

 
Consultando el punto final IPv4 de %s de una dirección IPv6 Teredo.

       -m, --method=TIPO     selecciona el TIPO de método
      -5                    igual que --method=md5
      -S, --salt=SALT       usa el SALT indicado
      -R, --rounds=NÚMERO   usa el NÚMERO indicado de rondas
      -P, --password-fd=NUM lee la contraseña del descriptor de archivo NUM
                            en lugar de «/dev/tty»
      -s, --stdin           igual que --password-fd=0
      -h, --help            muestra este mensaje de ayuda y finaliza
      -V, --version         muestra la información de la versión y finaliza

Si no se indica la CONTRASEÑA, se pedirá una de forma interactiva.
Si no se indica el SALT, se generará uno de forma aleatoria.
Si el TIPO es «help», se mostrarán los métodos disponibles.

Informar de fallos a %s.
 %s/tcp: servicio desconocido Métodos disponibles:
 No se puede procesar esta línea: %s Error catastrófico: el texto de las condiciones de uso ha sido cambiado.
Por favor, actualice este programa.
 No se ha encontrado el servidor %s. El carácter «%c» no es válido en el «salt».
 Interrumpido por la señal %d... Método «%s» inválido.
 El número «%s» no es válido.
 crypt(3) no admite este método.
 No se conoce ningún servidor de whois para esta clase de objeto. Contraseña:  Cadena de la consulta: «%s»

 Este TLD no dispone de servidor whois, pero puede acceder a la base de datos de whois en Este TLD no dispone de servidor whois. Se ha agotado el tiempo de espera. Pruebe «%s --help» para más información.
 Numero AS o red IP desconocida. Por favor, actualice este programa. Uso: mkpasswd [OPCIONES]... [CONTRASEÑA [SALT]]
Cifra la CONTRASEÑA utilizando crypt(3).

 Utilización: whois [OPCION]... OBJETO...

-h EQUIPO, --host EQUIPO  conectar con el servidor EQUIPO
-p PUERTO, --port PUERTO  conectar al PUERTO
-H                     no mostrar avisos legales
      --verbose        mostrar lo que está haciendo
      --help           mostrar este mensaje de ayuda y finalizar
      --version        mostrar información de la versión y finalizar

Estas opciones son compatibles con whois.ripe.net y algunos servidores
similares a RIPE:
-l                     buscar la coincidencia un nivel menos específica
-L                     buscar coincidencias de niveles menos específicos
-m                     buscar coincidencias del primer nivel más específico
-M                     buscar coincidencias de niveles más específicos
-c                     buscar la coincidencia más pequeña que contenga
                       un atributo «mnt-irt»
-x                     coincidencia exacta
-b                     mostrar rangos IP breves y contacto en caso de abuso
-B                     no filtrar objetos (mostrar direcciones de correo)
-G                     no agrupar objetos asociados
-d                     mostrar objetos de delegación de DNS reverso también
-i ATRIB[,ATRIB]...    búsqueda inversa del ATRIButo indicado
-T TIPO[,TIPO]...      sólo buscar objetos del TIPO indicado
-K                     mostrar sólo claves primarias
-r                     no buscar información de contacto de forma recursiva
-R                     mostrar la copia local del objeto del dominio incluso
                       si contiene una referencia
-a                     buscar también en todas las réplicas de base de datos
-s ORIGEN[,ORIGEN]...  buscar en la base de datos replicada desde ORIGEN
-g ORIGEN:PRIMERO-ÚLTIMO  buscar actualizaciones desde ORIGEN en la serie
                          PRIMERO a ÚLTIMO
-t TIPO                solicitar plantilla para el objeto del TIPO indicado
-v TIPO                solicitar plantilla detallada para el objeto del TIPO
                        indicado
-q [versión|orígenes|tipos]  consultar información con el servidor indicado
 Usando el servidor %s.
 Versión %s.

Informar de fallos a %s.
 Aviso: Se han usado opciones de RIPE con un servidor tradicional. Longitud del «salt» incorrecta: %d byte cuando se esperaba %d <= n <= %d.
 Longitud del «salt» incorrecta: %d bytes cuando se esperaba %d <= n <= %d.
 Longitud de sal («salt») incorrecta: %d byte en lugar de %d.
 Longitud de sal («salt») incorrecta: %d bytes en lugar de %d.
 crypt(3) basado en DES de 56 bits 