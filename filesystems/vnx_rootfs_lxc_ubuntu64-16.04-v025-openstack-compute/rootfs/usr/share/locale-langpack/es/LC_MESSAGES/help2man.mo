��    2      �  C   <      H     I     O     k  !   �     �     �     �  &   �          #  �   0  �   �  �   �  	   k     u     �     �     �     �     �     �  Y  �     	     	  "   %	  �   H	     �	     
     
  �   
  �   �
  �   W     D  1   S     �     �     �  �   �  B   �  1   �       5         V     \     j  �  v  )   U          �  �  �     J  "   P  !   s  7   �  !   �  '   �        4   8     m     s  �   �  �   6  �     	   �     �     
               #     ,     5  t  >     �     �  ;   �  �        �     �     �  �   �  �   �    p     y  6   �     �     �  .   �  �     K   �  G   5      }   H   �      �      �      !  �  !  0   �&     �&      '                       	   (                                             1   +   2   -          
      &      %   #          $                   !               0                  *   '                   "   ,           .   )            /    %B %Y %s \- manual page for %s %s %s: can't create %s (%s) %s: can't get `%s' info from %s%s %s: can't open `%s' (%s) %s: can't unlink %s (%s) %s: error writing to %s (%s) %s: no valid information found in `%s' AUTHOR AVAILABILITY Additional material may be included in the generated output with the
.B \-\-include
and
.B \-\-opt\-include
options.  The format is simple:

    [section]
    text

    /pattern/
    text
 Any
.B [NAME]
or
.B [SYNOPSIS]
sections appearing in the include file will replace what would have
automatically been produced (although you can still override the
former with
.B \-\-name
if required).
 Blocks of verbatim *roff text are inserted into the output either at
the start of the given
.BI [ section ]
(case insensitive), or after a paragraph matching
.BI / pattern /\fR.
 COPYRIGHT DESCRIPTION ENVIRONMENT EXAMPLES Environment Examples FILES Files GNU %s %s

Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2009, 2010,
2011, 2012, 2013, 2014, 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Written by Brendan O'Dea <bod@debian.org>
 Games INCLUDE FILES Include file for help2man man page Lines before the first section or pattern which begin with `\-' are
processed as options.  Anything else is silently ignored and may be
used for comments, RCS keywords and the like.
 NAME OPTIONS Options Other sections are prepended to the automatically produced output for
the standard sections given above, or included at
.I other
(above) in the order they were encountered in the include file.
 Patterns use the Perl regular expression syntax and may be followed by
the
.IR i ,
.I s
or
.I m
modifiers (see
.BR perlre (1)).
 Placement of the text within the section may be explicitly requested by using
the syntax
.RI [< section ],
.RI [= section ]
or
.RI [> section ]
to place the additional text before, in place of, or after the default
output respectively.
 REPORTING BUGS Report +(?:[\w-]+ +)?bugs|Email +bug +reports +to SEE ALSO SYNOPSIS System Administration Utilities The full documentation for
.B %s
is maintained as a Texinfo manual.  If the
.B info
and
.B %s
programs are properly installed at your site, the command
.IP
.B info %s
.PP
should give you access to the complete manual.
 The latest version of this distribution is available on-line from: The section output order (for those included) is: This +is +free +software Try `--no-discard-stderr' if option outputs to stderr Usage User Commands Written +by `%s' generates a man page out of `--help' and `--version' output.

Usage: %s [OPTION]... EXECUTABLE

 -n, --name=STRING       description for the NAME paragraph
 -s, --section=SECTION   section number for manual page (1, 6, 8)
 -m, --manual=TEXT       name of manual (User Commands, ...)
 -S, --source=TEXT       source of program (FSF, Debian, ...)
 -L, --locale=STRING     select locale (default "C")
 -i, --include=FILE      include material from `FILE'
 -I, --opt-include=FILE  include material from `FILE' if it exists
 -o, --output=FILE       send output to `FILE'
 -p, --info-page=TEXT    name of Texinfo manual
 -N, --no-info           suppress pointer to Texinfo manual
 -l, --libtool           exclude the `lt-' from the program name
     --help              print this help, then exit
     --version           print version number, then exit

EXECUTABLE should accept `--help' and `--version' options and produce output on
stdout although alternatives may be specified using:

 -h, --help-option=STRING     help option string
 -v, --version-option=STRING  version option string
 --version-string=STRING      version string
 --no-discard-stderr          include stderr when parsing option output

Report bugs to <bug-help2man@gnu.org>.
 help2man \- generate a simple manual page or other Project-Id-Version: help2man-1.46.6
Report-Msgid-Bugs-To: Brendan O'Dea <bug-help2man@gnu.org>
POT-Creation-Date: 2015-06-16 00:01+1000
PO-Revision-Date: 2015-07-09 09:21+0000
Last-Translator: Antonio Ceballos Roa <Unknown>
Language-Team: Spanish <es@tp.org.es>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 16:47+0000
X-Generator: Launchpad (build 18115)
Language: es
 %B %Y %s \- página de manual para %s %s %s: no se ha podido crear %s (%s) %s: no se puede obtener información de `%s' desde %s%s %s: no se puede abrir «%s» (%s) %s: no se ha podido desvincular %s (%s) %s: error al escribir en %s (%s) %s: no se ha encontrado información válida en `%s' AUTOR DISPONIBILIDAD Puede añadirse material en la salida generada con las opciones
.B \-\-include
y
.B \-\-opt\-include.
El formato es muy simple:

    [sección]
    texto

    /patrón/
    texto
 Todas las secciones
.B [NOMBRE]
o
.B [SINOPSIS]
que aparezcan en el fichero de inclusión reemplazan a las que se hubieran
generado automáticamente (aunque se puede evitar lo
anterior con
.B \-\-name
si hace falta).
 Los bloques de texto *roff literal se añaden a la salida, bien
al comienzo de la zona designada por
.BI [ sección ]
(insensible a mayúsculas y minúsculas), bien después de un párrafo que
coincida con
.BI / patrón /\fR.
 COPYRIGHT DESCRIPCIÓN ENTORNO EJEMPLOS Entorno Ejemplos FICHEROS Ficheros GNU %s %s

Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2009, 2010,
2011, 2012, 2013, 2014, 2015 Free Software Foundation, Inc.
Esto es software libre; consulte el código fuente para ver las condiciones de
copia. SIN NINGUNA garantía, ni siquiera COMERCIAL ni de ADECUACIÓN PARA NINGÚN
FIN PARTICULAR. Escrito por Brendan O'Dea <boo@debian.org>
 Juegos FICHEROS DE INCLUSIÓN Fichero de inclusión para la página de manual de help2man Las líneas situadas antes de la primera sección o patrón que empiezan por
`\-' se procesan como opciones.  El resto se ignora silenciosamente y puede
utilizarse como comentarios, claves RCS y cosas similares.
 NOMBRE OPCIONES Opciones Otras secciones se insertan delante de la salida generada automáticamente para
las secciones estándar indicadas arriba o incuidas en
.I otras
(arriba) en el orden en que se encuentran en el fichero «include».
 Los patrones utilizan la sintaxis de las expresiones regulares de Perl y pueden
ir seguidos de los modificadores
.IR i ,
.I s
o
.I m
(véase
.BR perlre (1)).
 Puede indicarse explícitamente dónde colocar el texto dentro de la sección
utilizando la sintaxis
.RI [< sección ],
.RI [= sección ]
o
.RI [> sección ]
para colocar el texto adicional antes, en lugar de, o después de la salida
predefinida, respectivamente.
 INFORMAR DE ERRORES Informar +(?:[\w-]+ +)?errores|Email +bug +reports +to VÉASE TAMBIÉN SINOPSIS Utilidades para la administración del sistema La documentación completa de
.B %s
se mantiene como manual Texinfo.  Si los programas
info .B
y
.B %s
están adecuadamente instalados en su sistema, la orden
.IP
.B info %s
.PP
debería darle acceso al manual completo.
 La última versión de esta distribución está disponible en línea desde: El orden en que salen las secciones (aquellas que estén incluidas) es: Esto +es +software +libre Pruebe con `--no-discard-stderr' si la opción saca la salida por stderr Modo de empleo Órdenes de usuario Escrito +por `%s' genera una página de manual a partir de la salida de `--help' y de `--version'.

Modo de empleo: %s [OPCIÓN]... EJECUTABLE

 -n, --name=CADENA       descripción del párrafo NAME
 -s, --section=SECCIÓN   número de sección de la página del manual (1, 6, 8)
 -m, --manual=TEXTO      nombre del manual (órdenes de usuario, ...)
 -S, --source=TEXTO      fuente del programa (FSF, Debian, ...)
 -L, --locale=CADENA     selección local (predefinida "C")
 -i, --include=FICHERO   incluir material de `FICHERO'
 -I, --opt-include=FICHERO incluir material de `FICHERO' si existe
 -o, --output=FICHERO    enviar salida a `FICHERO'
 -p, --info-page=TEXTO   nombre de la página del manual Texinfo
 -N, --no-info           suprimir el puntero al manual Texinfo
 -l, --libtool           excluir `lt-' del nombre del programa
     --help              imprimir esta ayuda y, a continuación, salir
     --version           imprimir el número de versión y, a continuación, salir

EJECUTABLE debería aceptar las opciones `--help' y `--version' y sacar el resultado por
la salida estándar, aunque se pueden especificar alternativas utilizando:

 -h, --help-option=CADENA     CADENA para la opción de ayuda
 -v, --version-option=CADENA  CADENA para la opción de versión
 --version-string=CADENA      CADENA para la versión
 --no-discard-stderr          incluir la salida estándar cuando se procese la opción output

Informar de errores a <bug-help2man@gnu.org>.
 help2man \- genera una página de manual básica o otras 