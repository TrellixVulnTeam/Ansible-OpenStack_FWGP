��          �   %   �      0  '  1  A   Y  @   �  D   �  =   !  :   _  l   �          !  ,   ;     h  %   �  ,   �  -   �        &   (     O     o  t   �  �     �   �  �   7	  0   �	  �  	
  '  �  B   �  I     J   b  @   �  ;   �  l   *     �     �  4   �  !   	  ,   +  4   X  5   �  $   �  *   �  #     #   7  {   [  �   �  �   �  �   +  4   �                          
                                                                      	                               		[CDEF:vname=rpn-expression]
		[VDEF:vdefname=rpn-expression]
		[PRINT:vdefname:format]
		[GPRINT:vdefname:format]
		[COMMENT:text]
		[SHIFT:vname:offset]
		[TEXTALIGN:{left|right|justified|center}]
		[TICK:vname#rrggbb[aa][:[fraction][:legend]]]
		[HRULE:value#rrggbb[aa][:legend]]
		[VRULE:value#rrggbb[aa][:legend]]
		[LINE[width]:vname[#rrggbb[aa][:[legend][:STACK]]]]
		[AREA:vname[#rrggbb[aa][:[legend][:STACK]]]]
		[PRINT:vname:CF:format] (deprecated)
		[GPRINT:vname:CF:format] (deprecated)
		[STACK:vname[#rrggbb[aa][:legend]]] (deprecated)
  * cd - changes the current directory

	rrdtool cd new directory
  * ls - lists all *.rrd files in current directory

	rrdtool ls
  * mkdir - creates a new directory

	rrdtool mkdir newdirectoryname
  * pwd - returns the current working directory

	rrdtool pwd
  * quit - closing a session in remote mode

	rrdtool quit
  * resize - alter the length of one of the RRAs in an RRD

	rrdtool resize filename rranum GROW|SHRINK rows
 %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option `-W %s' doesn't allow an argument
 %s: option `-W %s' is ambiguous
 %s: option requires an argument -- %c
 %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 * graph - generate a graph from one or several RRD

	rrdtool graph filename [-s|--start seconds] [-e|--end seconds]
 * graphv - generate a graph from one or several RRD
           with meta data printed before the graph

	rrdtool graphv filename [-s|--start seconds] [-e|--end seconds]
 * restore - restore an RRD file from its XML form

	rrdtool restore [--range-check|-r] [--force-overwrite|-f] filename.xml filename.rrd
 RRDtool is distributed under the Terms of the GNU General
Public License Version 2. (www.gnu.org/copyleft/gpl.html)

For more information read the RRD manpages
 Valid remote commands: quit, ls, cd, mkdir, pwd
 Project-Id-Version: rrdtool
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2016-04-06 16:14+0000
PO-Revision-Date: 2014-09-30 17:00+0000
Last-Translator: Adolfo Jayme <fitoschido@gmail.com>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:05+0000
X-Generator: Launchpad (build 18115)
 		[CDEF:vname=rpn-expression]
		[VDEF:vdefname=rpn-expression]
		[PRINT:vdefname:format]
		[GPRINT:vdefname:format]
		[COMMENT:text]
		[SHIFT:vname:offset]
		[TEXTALIGN:{left|right|justified|center}]
		[TICK:vname#rrggbb[aa][:[fraction][:legend]]]
		[HRULE:value#rrggbb[aa][:legend]]
		[VRULE:value#rrggbb[aa][:legend]]
		[LINE[width]:vname[#rrggbb[aa][:[legend][:STACK]]]]
		[AREA:vname[#rrggbb[aa][:[legend][:STACK]]]]
		[PRINT:vname:CF:format] (deprecated)
		[GPRINT:vname:CF:format] (deprecated)
		[STACK:vname[#rrggbb[aa][:legend]]] (deprecated)
  * cd - cambia el directorio actual

	rrdtool cd directorio nuevo
  * ls - lista todos los archivos *.rrd en la carpeta actual

	rrdtool ls
  * mkdir - crea un directorio nuevo

	rrdtool mkdir nombredirectorionuevo
  * pwd - devuelve el directorio de trabajo actual

	rrdtool pwd
  * quit - cierra una sesión en modo remoto

	rrdtool quit
  * resize - altera la longitud de un de los RRA en un RRD

	rrdtool resize filename rranum GROW|SHRINK rows
 %s: opción no permitida -- %c
 %s: opción inválida -- %c
 %s: la opción «%c%s» no admite ningún argumento
 %s: la opción «%s» es ambigua
 %s: la opción «%s» necesita un argumento
 %s: la opción «--%s» no admite ningún argumento
 %s: la opción «-W %s» no admite ningún argumento
 %s: la opción «-W %s» es ambigua
 %s: la opción necesita un argumento - %c
 %s: opción no reconocida «%c%s»
 %s: opción no reconocida «--%s»
 * graph - genera un gráfico de uno o más RRD

	rrdtool graph nombre de archivo [-s|--start segundos] [-e|--end segundos]
 * graphv - genera un gráfico a partir de uno o varios RRD
           con medatados impresos antes del gráfico

	rrdtool graphv archivo [-s|--start segundos] [-e|--end segundos]
 *restore - restaura un archivo RRD desde su formulario XML

	rrdtool restore [--range-check|-r] [--force-overwrite|-f] nombredearchivo.xml nombredearchivo.rrd
 RRDtool se distribuye bajo los términos de la GNU General
Public License Versión 2. (www.gnu.org/copyleft/gpl.html)

Para más información lea las páginas de manual de RRD
 Órdenes remotas válidas: quit, ls, cd, mkdir, pwd
 