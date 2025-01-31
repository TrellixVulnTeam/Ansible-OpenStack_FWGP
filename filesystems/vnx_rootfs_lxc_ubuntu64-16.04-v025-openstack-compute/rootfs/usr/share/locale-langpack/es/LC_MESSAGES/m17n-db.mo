��    2      �  C   <      H  �   I  �   �  �   �     �      �  >   �  F   6  <   }  =   �  ;   �  >   4  
  s  �   ~	  �   T
  �     ;   �  =   �  9     �   R  &   $  5   K  =   �  9   �  X   �  .   R  =   �  E   �  A       G     ]  I   z  H   �  I     H   W  I   �  H   �  H   3  J   |  H   �  >     !  O  D   q  X   �  Y     +  i  ,  �  +  �  *  �  I     �  c  �     8  �    �  %   �   (   $!  C   M!  R   �!  D   �!  ?   )"  ?   i"  B   �"  7  �"    $$  �   @%  �   '&  A   �&  D   '  A   a'  �   �'  2   �(  D   �(  H   )  E   V)  {   �)  0   *  >   I*  B   �*  ?   �*  O  +  &   [,  N   �,  L   �,  L   -  L   k-  L   �-  L   .  L   R.  L   �.  L   �.  F   9/  L  �/  P   �2  d   3  e   �3  K  �3  x  55  v  �6  v  %8  L   �9               %   -      	          #          1             0   )       
                                      (       /   "      +          $                       ,               *          2       &      .      '                    !    Acceptance level
The level of character sequence acceptance defined in WTT 2.0.
0 accepts any key sequence.  2 accepts only orthographic ones.
1 is somewhere between. Cham input method simulating Cham keyboard.
Cham characters are encoded in logical order in memory and in files.
But, you can type Cham text in visual order with this input method.
Backspace and Delete also work in the manner of visual order. Character set to limit candidates.
Value must be a symbol representing a charater set, or nil.
If the value is not nil, a candidate containing a character not belonging
to the specified character set is ignored. Commit
Commit the preedit text Convert
Convert the preedit text Delete char
Delete the following character in the preedit text Delete char backward
Delete the previous character in the preedit text Extend segment
Extend the current segment length to the tail First candidate
Spot the first candidate in the current group First segment
Move to the first segment in the preedit text Fist character
Move to the first character in the preedit text Flag to control the action of Backspace key (delete or undo).
If this variable is 0 (the default), Backspace key deletes the previous
character (e.g. "q u a i s BS" => "quá").
If the value is 1, Backspace key undoes the previous key
(e.g. "q u a i s BS" => "quai"). Flag to control tone mark position in equivocal cases.
If this variable is 0 (the default), put tone mark on the first vowel
in such equivocal cases as "oa", "oe", "uy".
Otherwise, put tone mark on the last vowel. Global variable and command definitions.
This is actually not an input method, but provides documents,
default values of global variables, and default key-bindings of
global commands. Input method for Unicode BMP characters using hexadigits.
Type C-u followed by four hexadecimal numbers [0-9A-Fa-f]
of a Unicode character code.
 Last candidate
Spot the last candidate in the current group Last character
Move to the last character in the preedit text Last segment
Move to the last segment in the preedit text Maxmum number of candidates in a candidate group.
Value must be an integer.
If the value is not positive, number of candidates in a group is decided
by how candiates are grouped in an input method source file. Next candidate
Spot the next candidate Next candidate group
Move to the next candidate group Next character
Move to the next character in the preedit text Next segment
Move to the next segment in the preedit text Preedit prompt
Prompt string shown in the preedit area while typing hexadecimal numbers. Previous candidate
Spot the previous candidate Previous candidate group
Move to the previous candidate group Previous character
Move to the previous character in the preedit text Previous segment
Move to the previous segment in the preedit text Reload input method
Reload the input method (and configulation if any) and freshly start it.
Note that the length of key-sequence bound for this command must be 1.
This is one of special commands reserved by the m17n library, and
should not be used in a map of an input method. Revert
Revert the conversion Select the 10th candidate
Select the tenth candidate in the current group Select the 1st candidate
Select the first candidate in the current group Select the 2nd candidate
Select the second candidate in the current group Select the 3rd candidate
Select the third candidate in the current group Select the 4th candidate
Select the fourth candidate in the current group Select the 5th candidate
Select the fifth candidate in the current group Select the 6th candidate
Select the sixth candidate in the current group Select the 7th candidate
Select the seventh candidate in the current group Select the 9th candidate
Select the ninth candidate in the current group Shrink segment
Shrink the current segment length from the tail Simulating Azerty keyboard on English keyboard.

     &1  é2  "3  '4  (5  -6  è7  _8  ç9  à0  )°  =_  ²~
      aA  zZ  eE  rR  tT  yY  uU  iI  oO  pP  ^¨  $£
       qQ  sS  dD  fF  gG  hH  jJ  kK  lL  mM  ù%  *|
        wW  xX  cC  vV  bB  nN  ,?  ;.  :/  !§

'[' and '{' are used as a dead key to type a character with the
circumflex and diaeresis respectively (e.g. '[' 'e' -> "ê").

'Alt-2' and 'Alt-7' are used as a dead key to type a character
with tilde and grave respectively (e.g. 'Alt-2' 'n' -> "ñ").

'Ctrl-Alt-2' and 'Ctrl-Alt-7' can be used as 'Alt-2' and 'Alt-7'
respectively.

Azerty keyboard has one more key at the bottom left corner for
inputting "<" and ">".  As a normal English keyboard doesn't
have such a key left, type '<' and '>' twice for "<" and ">"
respectively. Start Unicode
Start typing hexadecimal numbers of Unicode character. Surrounding text vs. preedit
If 1, try to use surrounding text.  Otherwise, use preedit. Surrounding text vs. preedit.
If 1, try to use surrounding text.  Otherwise, use preedit. Vietnames input method using the TCVN6064 sequence.
Typing Backslash ('\') toggles the normal mode and English mode.
The following variables are customizable:
  tone-mark-on-last: control tone mark position in equivocal cases
  backspace-is-undo: control the action of Backspace key (delete or undo) Vietnames input method using the TELEX key sequence.
Typing Backslash ('\') toggles the normal mode and English mode.
The following variables are customizable:
  tone-mark-on-last: control tone mark position in equivocal cases
  backspace-is-undo: control the action of Backspace key (delete or undo) Vietnames input method using the VIQR key sequence.
Typing Backslash ('\') toggles the normal mode and English mode.
The following variables are customizable:
  tone-mark-on-last: control tone mark position in equivocal cases
  backspace-is-undo: control the action of Backspace key (delete or undo) Vietnames input method using the VNI key sequence.
Typing Backslash ('\') toggles the normal mode and English mode.
The following variables are customizable:
  tone-mark-on-last: control tone mark position in equivocal cases
  backspace-is-undo: control the action of Backspace key (delete or undo) select the 8th candidate
Select the eighth candidate in the current group Project-Id-Version: m17n-db
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2014-12-12 23:29+0900
PO-Revision-Date: 2012-12-31 08:20+0000
Last-Translator: Paco Molinero <paco@byasl.com>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:34+0000
X-Generator: Launchpad (build 18115)
 Nivel de aceptación
El nivel de aceptación de secuencia de carácter definido en WTT 2.0.
0 acepta cualquier secuencia de tecla.  2 acepta sólo ortográficas.
1 es algo entre medias. Cham método de entrada por teclado que simula Cham.
Cham los caracteres están codificados en un orden lógico dentro de la memoria y en los archivos.
Sin embargo puede escribir texto en Cham como una orden visual con este método de entrada.
Retroceder y Borrar trabajan de la misma forma con ordenes visuales. Conjunto de caracteres para limitar las candidaturas.
El valor debe ser un símbolo que representa un conjunto de caracteres, o nulo.
Si el valor no es cero, un candidato que no contenga un carácter de pertenencia
al conjunto de caracteres especificado se ignora. Acometer
Acometer el texto preeditado Convertir
Convertir el texto pre-editado Borrar caracter
Borrar el siguiente caracter en el texto preeditado Eliminar caracteres hacia atrás
Eliminar el carácter previo del texto preeditado Extender segmento
Extender la longitud del segmento actual a la cola Primer candidato
Muestra el primer candidato en el grupo actual Primer segmento
Mover al primer segmento en el texto preeditado Primer carácter
Mover al primer carácter en el texto pre-editado Marcar para controlar la acción de la tecla de Retroceso (borrar o deshacer).
Si esta variable es 0 (por defecto), la tecla de retroceso borrará el carácter
anterior (p.ej. «q u a i s BS» => «quá»).
si el valor es 1, la tecla de retroceso deshace la clave anterior
 (p.ej. «q u a i s BS» => «quai»). Marcar para controlar la posición de tono en los casos dudosos.
si esta variable es 0 (por defecto) ponga una marca de tono en la primera vocal
en los aquellos casos dudosos como pueden ser «oa», «oe», «uy».
de lo contrario, se pondrá la marca en la última vocal.
equívocos Variable global y definciones de órdenes.
Esto no es en realidad un método de entrada, pero proporciona los documentos,
valores predeterminados de variables globales, y los enlaces clave predeterminados
de las órdenes globales. Método de entrada para caracteres Unicode BMP usando dígitos hexadecimales.
Teclee C-u seguido de cuatro números hexadecimales [0-9A-Fa-f]
de un código de carácter Unicode.
 Último candidato
Muestra el último candidato en el grupo actual Último carácter
Mover al último carácter en el texto pre-editado Último segmento
Mover al último segmento en el texto preeditado Máximo números de candidatos en un grupo de candidatos.
El valor debe ser un entero 
Si el valor no es positivo el número de candidatos en un grupo se decide
por como los candidatos se agrupan en un archivo de fuente de método de entrada Siguiente candidato
Muestra el siguiente candidato Siguiente grupo de candidatos
Mover al siguiente grupo de candidatos Carácter siguiente
Mover al carácter siguiente en el texto pre-editado Segmento siguiente
Mover al segmento siguiente en el texto preeditado Pregunta preedit
La cadena del sistema se muestra en el área preedit mientras se están escribiendo números hexadecimales Candidato anterior
Muestra el candidato anterior Grupo de candidatos previo
Mover al grupo de candidatos previo Carácter previo
Mover al carácter previo en el texto pre-editado Segmento previo
Mover al segmento previo en el texto preeditado Recargar método de entrada
Actualizar el método de entrada (y configuración de cualquiera) y reiniciar.
Tenga en cuenta que la duración de la secuencia de teclas determinada de esta orden debe ser 1.
Esta es una de las órdenes especiales reservadas por la biblioteca m17n, y
no debe utilizarse en un mapa de un método de entrada. Revertir
Revertir el texto pre-editado Seleccionar el 10º candidato
Seleccionar el 10º candidato en el grupo actual Seleccionar el 1er candidato
Seleccionar el 1er candidato en el grupo actual Seleccionar el 2º candidato
Seleccionar el 2º candidato en el grupo actual Seleccionar el 3er candidato
Seleccionar el 3er candidato en el grupo actual Seleccionar el 4º candidato
Seleccionar el 4º candidato en el grupo actual Seleccionar el 5º candidato
Seleccionar el 5º candidato en el grupo actual Seleccionar el 6º candidato
Seleccionar el 6º candidato en el grupo actual Seleccionar el 7º candidato
Seleccionar el 7º candidato en el grupo actual Seleccionar el 9º candidato
Seleccionar el 9º candidato en el grupo actual Encoger segmento
Encoger la longitud del segmento actual desde la cola Emulando el teclado Azerty en el teclado inglés.

     &1  é2  "3  '4  (5  -6  è7  _8  ç9  à0  )°  =_  ²~
      aA  zZ  eE  rR  tT  yY  uU  iI  oO  pP  ^¨  $£
       qQ  sS  dD  fF  gG  hH  jJ  kK  lL  mM  ù%  *|
        wW  xX  cC  vV  bB  nN  ,?  ;.  :/  !§

'[' y '{' se usan como teclas muertas para escribir un carácter con el
circunflejo y diéresis respectivamente (ej.: '[' 'e' -> "ê").

'Alt-2' y 'Alt-7' se usan como teclas muertas para escribir un carácter
con tilde y acento grave respectivamente (ej.: 'Alt-2' 'n' -> "ñ").

'Ctrl-Alt-2' y 'Ctrl-Alt-7' pueden usarse como 'Alt-2' y 'Alt-7'
respectivamente.

El teclado Azerty tiene una tecla más en la esquina inferior izquierda para
introducir "<" y ">".  Como un teclado inglés normal no
tiene esta tecla, pulse '<' y '>' dos veces para "<" y ">"
respectivamente. Iniciar Unicode
Iniciar el tecleado hexadecimal de números de caracter Unicode. Texto circundado vs. preeditado
Si es 1, intente usar texto circundado, En caso contrario preeditado Texto circundado vs. preeditado.
Si es 1, intente usar texto circundado, En caso contrario preeditado Método vietnamita de entrada utilizando la secuencia TCVN6064.
Escribiendo barra invertida («\») en modo normal o en modo Inglés.
Las siguientes variables se puede personalizar:
  tone-mark-on-last: un tono de control marca los casos dudosos
  backspace-is-undo: controla la acción de la tecla de retroceso (borrar o deshacer) Método de entrada vietnamita utilizando la secuencia de teclas TELEX.
Teclear barra invertida («\») alternativamente entre el modo normal y el modo inglés.
Las siguientes variables se pueden ser configuradas:
  tone-mark-on-last: el control del tono señala la posición en casos dudosos
  backspace-is-undo: controlar con cuidado la tecla de retroceso (borrar o deshacer) Método de entrada vietnamita utilizando la secuencia de teclas VIQR.
 Teclear barra invertida («\») alternativamente entre el modo normal y el modo inglés.
 Las siguientes variables se pueden configurar:
  tone-mark-on-last: el control del tono señala la posición en casos dudosos
  backspace-is-undo: controlar cuidadosamente la tecla de retroceso (borrar o deshacer) Método de entrada vietnamita utilizando la secuencia de teclas VNI.
Teclear barra invertida («\») alternativamente entre el modo normal y el modo inglés.
Las siguientes variables pueden ser configuradas:
  tone-mark-on-last: el control del tono señala la posición en casos dudosos
  backspace-is-undo: controlar cuidadosamente la tecla de retroceso (borrar o deshacer) Seleccionar el 8º candidato
Seleccionar el 8º candidato en el grupo actual 