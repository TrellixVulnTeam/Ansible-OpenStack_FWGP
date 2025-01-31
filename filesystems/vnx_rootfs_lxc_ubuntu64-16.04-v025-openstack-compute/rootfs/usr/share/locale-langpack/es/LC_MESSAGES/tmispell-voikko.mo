��            )   �      �     �  <   �  9   �  3   (     \  /   y     �     �     �  2   �  '   #     K     h  $   w     �  0   �  0   �          3     P     k     }  7  �  �  �  M   y     �     �     �  �  �  *   �  G   �  D     =   I     �  ?   �     �  -   �  %     C   E  <   �  +   �     �  /     !   3  7   U  ;   �  #   �  *   �  $        =      T  -  u  �  �  \         �      �      �          
                      	                                                                                                           -- Press any key to continue -- An Ispell program was not given in the configuration file %s Are you sure you want to throw away your changes? (y/n):  Conversion of '%s' to character set '%s' failed: %s Error initialising libvoikko Error initializing character set conversion: %s File: %s Incomplete spell checker entry Missing argument for option %s Parse error in file "%s" on line %d, column %d: %s Parse error in file "%s" on line %d: %s Parse error in file "%s": %s Replace with:  Unable to open configuration file %s Unable to open file %s Unable to open file %s for reading a dictionary. Unable to open file %s for writing a dictionary. Unable to open temporary file Unable to set encoding to %s Unable to write to file %s Unknown option %s Unterminated quoted string Usage: %s [options] [file]...
Options: [FMNLVlfsaAtnhgbxBCPmSdpwWTv]

 -F <file>  Use given file as the configuration file.

The following flags are same for ispell:
 -v[v]      Print version number and exit.
 -M         One-line mini menu at the bottom of the screen.
 -N         No mini menu at the bottom of the screen.
 -L <num>   Number of context lines.
 -V         Use "cat -v" style for characters not in the 7-bit ANSI
            character set.
 -l         Only output a list of misspelled words.
 -f <file>  Specify the output file.
 -s         Issue SIGTSTP at every end of line.
 -a         Read commands.
 -A         Read commands and enable a command to include a file.
 -e[e1234]  Expand affixes.
 -c         Compress affixes.
 -D         Dump affix tables.
 -t         The input is in TeX format.
 -n         The input is in [nt]roff format.
 -h         The input is in sgml format.
 -b         Create backup files.
 -x         Do not create backup files.
 -B         Do not allow run-together words.
 -C         Allow run-together words.
 -P         Do not generate extra root/affix combinations.
 -m         Allow root/affix combinations that are not in dictionary.
 -S         Sort the list of guesses by probable correctness.
 -d <dict>  Specify an alternate dictionary file.
 -p <file>  Specify an alternate personal dictionary.
 -w <chars> Specify additional characters that can be part of a word.
 -W <len>   Consider words shorter than this always correct.
 -T <fmt>   Assume a given formatter type for all files.
 -r <cset>  Specify the character set of the input.
 Whenever an unrecognized word is found, it is printed on
a line on the screen. If there are suggested corrections
they are listed with a number next to each one. You have
the option of replacing the word completely, or choosing
one of the suggested words. Alternatively, you can ignore
this word, ignore all its occurrences or add it in the
personal dictionary.

Commands are:
 r       Replace the misspelled word completely.
 space   Accept the word this time only.
 a       Accept the word for the rest of this session.
 i       Accept the word, and put it in your personal dictionary.
 u       Accept and add lowercase version to personal dictionary.
 0-9     Replace with one of the suggested words.
 x       Write the rest of this file, ignoring misspellings,
         and start next file.
 q       Quit immediately.  Asks for confirmation.
         Leaves file unchanged.
 ^Z      Suspend program.
 ?       Show this help screen.
 [SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help \ at the end of a string aiuqxr yn Project-Id-Version: tmispell-voikko
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2009-02-07 18:46+0200
PO-Revision-Date: 2008-02-02 10:15+0000
Last-Translator: Paco Molinero <paco@byasl.com>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 18:10+0000
X-Generator: Launchpad (build 18115)
 -- Pulse cualquier tecla para continuar -- No se ha indicado un programa Ispell en el archivo de configuración %s ¿Está seguro de que desea descartar sus cambios? (Y: sí; N: no):  La conversión de '%s' al juego de caracteres '%s' falló: %s Error inicializando libvoikko Error al inicializar la conversión del juego de caracteres: %s Archivo: %s Entrada del corrector ortográfico incompleta Falta un argumento para la opción %s Error de análisis en el archivo «%s», línea %d y columna %d: %s Error de análisis en el archivo «%s», en la línea %d: %s Error de análisis en el archivo «%s»: %s Reemplazar con:  Imposible abrir el archivo de configuración %s No es posible abrir el archivo %s Imposible abrir el archivo %s para leer un diccionario. Imposible abrir el archivo %s para escribir un diccionario. Imposible abrir el archivo temporal Imposible establecer la codificación a %s Imposible escrcibir en el archivo %s Opción desconocida %s Cadena entrecomillada sin cerrar Uso: %s [opciones] [archivo]...
Opciones: [FMNLVlfsaAtnhgbxBCPmSdpwWTv]

 -F <archivo>  Usa el archivo dado como archivo de configuración.

Las siguientes banderas son iguales para ispell:
 -v[v]      Muestra el número de versión y sale.
 -M         Un minimenú de una línea al pie de la pantalla.
 -N         Ningún minimenú al pie de la pantalla.
 -L <núm>   Número de líneas de contexto.
 -V         Usa el estilo «cat -v» para los caracteres fuera del juego
            de caracteres ANSI de 7 bits.
 -l         Sólo saca una lista de palabras erróneas.
 -f <archivo>  Especifica el archivo de salida.
 -s         SIGTSTP al final de cada línea.
 -a         Lee órdenes.
 -A         Lee órdenes y habilita una orden para incluir un archivo.
 -e[e1234]  Expande los afijos.
 -c         Comprime los afijos.
 -D         Vacía las tablas de afijos.
 -t         La entrada está en formato TeX.
 -n         La entrada está en formato [nt]roff.
 -h         La entrada está en formato SGML.
 -b         Crea archivos de copia de seguridad.
 -x         No crea archivos de copia de seguridad.
 -B         No permite palabras yuxtapuestas.
 -C         Permite palabras yuxtapuestas.
 -P         No genera combinaciones de raíces o afijos extras.
 -m         Permite combinaciones de raíces o afijos que no están en el diccionario.
 -S         Ordena la lista de sugerencias por probabilidad de corrección.
 -d <dic>  Especifica un archivo de diccionario alternativo.
 -p <archivo>  Especifica un diccionario personal alternativo.
 -w <cars> Especifica caracteres adicionales que pueden ser parte de una palabra.
 -W <long>   Considera siempre correctas las palabras más cortas que esto.
 -T <fmt>   Asume un tipo formateador dado para todos los archivos.
 -r <cset>  Especifica el juego de caracteres de la entrada.
 Cada vez que se encuentra una palabra desconocida, se
visualiza en una línea en la pantalla. Si hay sugerencias
de corrección, éstas se listan con un número junto a cada
una. Tiene la opción de reemplazar la palabra completamente
o escoger una de las sugerencias. También puede ignorar
esta palabra, ignorar todas sus apariciones o añadirla al
diccionario personal.

Las órdenes son:
 r       Reemplaza la palabra completamente.
 space   Acepta la palabra sólo por esta vez.
 a       Acepta la palabra para el resto de la sesión.
 i       Acepta la palabra y la añade al diccionario personal.
 u       Acepta y añade una versión en minúscula en el diccionario personal.
 0-9     Reemplaza con una de las sugerencias.
 x       Escribe el resto del archivo ignorando los errores,
         y comienza el siguiente archivo.
 q       Sale inmediatamente. Pregunta para confirmar.
         Deja el archivo sin cambios.
 ^Z      Suspende el programa.
 ?       Muestra esta ayuda.
 [SP] <número> R)esponder A)ceptar I)nsertar L)buscar U)ncap Q)cerrar X)Salir o ? para ayuda \ al final de una cadena aiuqxr yn 