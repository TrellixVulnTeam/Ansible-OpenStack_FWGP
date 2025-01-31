��            )         �     �  �  �  �  �  !      !   B  /   d  =   �  2   �  $        *  %   C  .   i  +   �  *   �  .   �     	     9	     U	     s	     �	  &   �	     �	     �	  @   �	  3   /
  R  c
     �     �     �       �        �  #  �  �  �  &   �  )   �  B   �  S   &  :   z  (   �      �  5   �  -   5  4   c  2   �  6   �  "        %  !   E  %   g     �  3   �     �     �  F   �  7   D  u  |     �       !   (     J                                                                                     	                                      
                    %s %s
   -n, --name=name         get the named extended attribute value
  -d, --dump              get all extended attribute values
  -e, --encoding=...      encode values (as 'text', 'hex' or 'base64')
      --match=pattern     only get attributes with names matching pattern
      --only-values       print the bare values only
  -h, --no-dereference    do not dereference symbolic links
      --absolute-names    don't strip leading '/' in pathnames
  -R, --recursive         recurse into subdirectories
  -L, --logical           logical walk, follow symbolic links
  -P  --physical          physical walk, do not follow symbolic links
      --version           print version and exit
      --help              this help text
   -n, --name=name         set the value of the named extended attribute
  -x, --remove=name       remove the named extended attribute
  -v, --value=value       use value as the attribute value
  -h, --no-dereference    do not dereference symbolic links
      --restore=file      restore extended attributes
      --version           print version and exit
      --help              this help text
 %s %s -- get extended attributes
 %s %s -- set extended attributes
 %s: %s: No filename found in line %d, aborting
 %s: No filename found in line %d of standard input, aborting
 %s: Removing leading '/' from absolute path names
 %s: invalid regular expression "%s"
 -V only allowed with -s
 A filename to operate on is required
 At least one of -s, -g, -r, or -l is required
 Attribute "%s" had a %d byte value for %s:
 Attribute "%s" has a %d byte value for %s
 Attribute "%s" set to a %d byte value for %s:
 Could not get "%s" for %s
 Could not list "%s" for %s
 Could not remove "%s" for %s
 Could not set "%s" for %s
 No such attribute Only one of -s, -g, -r, or -l allowed
 Unrecognized option: %c
 Usage: %s %s
 Usage: %s %s
       %s %s
Try `%s --help' for more information.
 Usage: %s %s
Try `%s --help' for more information.
 Usage: %s [-LRSq] -s attrname [-V attrvalue] pathname  # set value
       %s [-LRSq] -g attrname pathname                 # get value
       %s [-LRSq] -r attrname pathname                 # remove attr
       %s [-LRq]  -l pathname                          # list attrs 
      -s reads a value from stdin and -g writes a value to stdout
 getting attribute %s of %s listing attributes of %s setting attribute %s for %s setting attributes for %s Project-Id-Version: attr-2.4.37.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-03 13:57+0000
PO-Revision-Date: 2009-09-29 17:10+0000
Last-Translator: Paco Molinero <paco@byasl.com>
Language-Team: Spanish
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 15:59+0000
X-Generator: Launchpad (build 18115)
X-Poedit-Language: Spanish
        %s %s
   -n, --name=nombre       obtener el atributo extendido "nombre"
  -d, --dump              obtener valor de todos los atributos extendidos
  -e, --encoding=...      codificar valores (como 'text', 'hex' o 'base64')
      --match=patrón      sólo obtener atributos cuyo nombre coincida con "patrón"
      --only-values       sólo mostrar los valores en crudo
  -h, --no-dereference    no resolver enlaces simbólicos
      --absolute-names    no eliminar '/' iniciales en nombres de ruta
  -R, --recursive         recorrer subdirectorios recursivamente
  -L, --logical           recorrido lógico, siguiendo enlaces simbólicos
  -P  --physical          recorrido físico, no seguir enlaces simbólicos
      --version           mostrar versión y salir
      --help              este texto de ayuda
   -n, --name=nombre       establecer valor para el atributo extendido "nombre"
  -x, --remove=nombre     eliminar atributo extendido "nombre"
  -v, --value=valor       usar "valor" como el valor del atributo
  -h, --no-dereference    no resolver enlaces simbólicos
      --restore=archivo   restaurar atributos extendidos
      --version           mostrar versión y salir
      --help              este texto de ayuda
 %s %s -- obtener atributos extendidos
 %s %s -- establecer atributos extendidos
 %s: %s: No se encontró nombre de archivo en línea %d, abortando
 %s: No se encontró nombre de archivo en línea %d de entrada estándar, abortando
 %s: Eliminando «/» inicial en nombres de ruta absolutos
 %s: expresión regular inválida «%s»
 -V sólo está permitido con -s
 Se necesita un nombre de archivo sobre el que operar
 Se necesita al menos uno de -s, -g, -r, o -l
 El atributo «%s» tenía el valor byte %d para %s:
 El atributo «%s» tiene el valor byte %d para %s
 Atributo «%s» establecido al valor byte %d para %s:
 No se pudo obtener «%s» para %s
 No se pudo listar "%s" para %s
 No se pudo eliminar "%s" para %s
 No se pudo establecer «%s» para %s
 Atributo inexistente Sólo está permitido usar uno de -s, -g, -r, o -l
 Opción no reconocida: %c
 Uso: %s %s
 Uso: %s %s
       %s %s
Escriba «%s --help» para más información.
 Uso: %s %s
Escriba `%s --help' para más información.
 Uso: %s [-LRSq] -s nomatrib ruta [-V valoratr] ruta  # establecer valor
     %s [-LRSq] -g nomatrib ruta                     # obtener valor
     %s [-LRSq] -r nomatrib ruta                     # borrar atributo
     %s [-LRq]  -l ruta                              # listar atributos 
    -s lee un valor de la entrada estándar y -g escribe un valor a la salida estándar
 obteniendo atributo %s de %s listando atributos de %s estableciendo atributo %s para %s estableciendo atributos para %s 