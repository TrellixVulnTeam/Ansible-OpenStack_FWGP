��    �      �  �   L	      `  �   a  r   V  Z   �    $  _  �  �     �   �  �   �  m   1  r   �  \     j  o  �   �  [   �  `   0  N   �  \   �    =  �   Z      @      '  [     �!     �"     �"  %   �"  *   �"     #     .#  B   L#  E   �#  L   �#     "$     0$  $   D$  !   i$     �$     �$  .   �$  =   �$  0   &%     W%  -   s%     �%     �%  ,   �%  !   &  (   (&     Q&     m&     �&     �&     �&      �&     �&     '     -'     H'     g'  #   �'  -   �'      �'  %   �'  #    (  0   D(  H   u(  .   �(     �(     �(     )     %)     ;)  =   M)  C   �)  (   �)  '   �)  +    *  .   L*  B   {*  9   �*  3   �*     ,+  #   F+     j+     �+     �+     �+      �+     �+     ,     .,  '   F,  &   n,  #   �,     �,     �,     �,     �,     -  0   %-  1   V-     �-  #   �-     �-  %   �-  #   .  <   +.  &   h.  O   �.  �   �.  3   �/  X   �/  /   W0     �0  @   �0  (   �0     1     '1  "   F1  �   i1     2  =   72  $   u2     �2  U   �2  *   3  d   :3  <   �3  g   �3     D4     c4     4  '   �4     �4  9   �4  �   5  +   �5  )   �5     �5  @   6     Z6     w6      �6     �6  .   �6  /   �6  �  !7    �8  �   �9  n   \:  �  �:  x  h=    �>  �   �?  �   �@  l   gA  �   �A  `   XB  �  �B    RD  r   lE  o   �E  I   OF  r   �F  �  G  �   �L  @  �M  I   �N  .  O  8  EP     ~Q     �Q  ,   �Q  3   �Q     R  /   &R  I   VR  O   �R  ]   �R     NS     `S  )   zS  -   �S     �S     �S  <   T  X   BT  C   �T  8   �T  5   U     NU      lU  <   �U  *   �U  /   �U      %V     FV  -   fV     �V     �V  '   �V  %   �V  (   W  #   >W  1   bW  $   �W  /   �W  D   �W  )   .X  0   XX  )   �X  <   �X  Q   �X  C   BY     �Y     �Y     �Y     �Y     �Y  L   Z  R   SZ  .   �Z  2   �Z  +   [  5   4[  G   j[  3   �[  /   �[     \  *   /\     Z\     v\  )   �\      �\  ,   �\  #   ]  !   0]      R]  /   s]  +   �]  1   �]     ^     ^     ;^     S^     i^  9   �^  >   �^     �^  &   _  $   <_  *   a_  $   �_  H   �_  '   �_  S   "`  �   v`  >   va  _   �a  2   b     Hb  <   hb  )   �b     �b     �b  !   c  �   0c     �c  ;    d  "   <d  "   _d  U   �d  +   �d  a   e  =   fe  e   �e  %   
f     0f     Jf  %   if     �f  9   �f  �   �f  -   og  ,   �g     �g  ?   �g     #h     >h     Oh     nh  5   �h  6   �h         0   p       6      1   2       v             H   x   b      �   _   S   ]   G   3   �       k   =   i   [   	   �   O   �       �       �   M          �   �   j   c   h   �   g   8   @   �   �          C   B   K          +   *   f   �   s      )   4       ^   P              m   e   Y              �              ,   5   }       Z   "   ~      W   E      ;          F       q   N       /   #              A            �   {       J       �   �   V           &   '   Q   o       L           <      7          >       T   u       l   (          !   :   n       r       �      z                 %   X   $             .   D       �   �   -       d       t   
       ?           9          R       a       �   w   |          I   `       U   y   \           
Add one or more files to the topmost or named patch.  Files must be
added to the patch before being modified.  Files that are modified by
patches already applied on top of the specified patch cannot be added.

-p patch
	Patch to add files to.
 
Create a new patch with the specified file name, and insert it after the
topmost patch in the patch series file.
 
Edit the specified file(s) in \$EDITOR (%s) after adding it (them) to
the topmost patch.
 
Fork the topmost patch.  Forking a patch means creating a verbatim copy
of it under a new name, and use that new name instead of the original
one in the current series.  This is useful when a patch has to be
modified, but the original version of it should be preserved, e.g.
because it is used in another series, or for the history.  A typical
sequence of commands would be: fork, edit, refresh.

If new_name is missing, the name of the forked patch will be the current
patch name, followed by \"-2\".  If the patch name already ends in a
dash-and-number, the number is further incremented (e.g., patch.diff,
patch-2.diff, patch-3.diff).
 
Global options:

--trace
	Runs the command in bash trace mode (-x). For internal debugging.

--quiltrc file
	Use the specified configuration file instead of ~/.quiltrc (or
	/etc/quilt.quiltrc if ~/.quiltrc does not exist).  See the pdf
	documentation for details about its possible contents.

--version
	Print the version number and exit immediately. 
Import external patches.

-p num
	Number of directory levels to strip when applying (default=1)

-n patch
	Patch filename to use inside quilt. This option can only be
	used when importing a single patch.

-f	Overwite/update existing patches.
 
Initializes a source tree from an rpm spec file or a quilt series file.

-d	optional path prefix (sub-directory).

-v	verbose debug output.
 
Please remove all patches using \`quilt pop -a' from the quilt version used to create this working tree, or remove the %s directory and apply the patches from scratch.\n 
Print a list of applied patches, or all patches up to and including the
specified patch in the file series.
 
Print a list of patches that are not applied, or all patches that follow
the specified patch in the series file.
 
Print an annotated listing of the specified file showing which
patches modify which lines.
 
Print the list of files that the topmost or specified patch changes.

-a	List all files in all applied patches.

-l	Add patch name to output.

-v	Verbose, more user friendly output.

--combine patch
	Create a listing for all patches between this patch and
	the topmost applied patch. A patch name of \"-\" is equivalent
	to specifying the first applied patch.

 
Print the list of patches that modify the specified file. (Uses a
heuristic to determine which files are modified by unapplied patches.
Note that this heuristic is much slower than scanning applied patches.)

-v	Verbose, more user friendly output.
 
Print the name of the next patch after the specified or topmost patch in
the series file.
 
Print the name of the previous patch before the specified or topmost
patch in the series file.
 
Print the name of the topmost patch on the current stack of applied
patches.
 
Print the names of all patches in the series file.

-v	Verbose, more user friendly output.
 
Refreshes the specified patch, or the topmost patch by default.
Documentation that comes before the actual patch in the patch file is
retained.

It is possible to refresh patches that are not on top.  If any patches
on top of the patch to refresh modify the same files, the script aborts
by default.  Patches can still be refreshed with -f.  In that case this
script will print a warning for each shadowed file, changes by more
recent patches will be ignored, and only changes in files that have not
been modified by any more recent patches will end up in the specified
patch.

-p n	Create a -p n style patch (-p0 or -p1 supported).

-u, -U num, -c, -C num
	Create a unified diff (-u, -U) with num lines of context. Create
	a context diff (-c, -C) with num lines of context. The number of
	context lines defaults to 3.

--no-timestamps
	Do not include file timestamps in patch headers.
	
--no-index
	Do not output Index: lines.

--diffstat
	Add a diffstat section to the patch header, or replace the
	existing diffstat section.

-f	Enforce refreshing of a patch that is not on top.

--backup
	Create a backup copy of the old version of a patch as patch~.

--sort	Sort files by their name instead of preserving the original order.

--strip-trailing-whitespace
	Strip trailing whitespace at the end of lines.
 
Remove one or more files from the topmost or named patch.  Files that
are modified by patches on top of the specified patch cannot be removed.

-p patch
	Patch to remove files from.
 
Remove the specified or topmost patch from the series file.  If the
patch is applied, quilt will attempt to remove it first. (Only the
topmost patch can be removed right now.)

-n	Delete the next patch after topmost, rather than the specified
	or topmost patch.
 
Rename the topmost or named patch.

-p patch
	Patch to rename.
 
Take a snapshot of the current working state.  After taking the snapshot,
the tree can be modified in the usual ways, including pushing and
popping patches.  A diff against the tree at the moment of the
snapshot can be generated with \`quilt diff --snapshot'.

-d	Only remove current snapshot.
 
Upgrade the meta-data in a working tree from an old version of quilt to the
current version. This command is only needed when the quilt meta-data format
has changed, and the working tree still contains old-format meta-data. In that
case, quilt will request to run \`quilt upgrade'.
        quilt --version %s: I'm confused.
 Appended text to header of patch %s\n Applied patch %s (forced; needs refresh)\n Applying patch %s\n Cannot add symbolic link %s\n Cannot diff patches with -p%s, please specify -p0 or -p1 instead\n Cannot refresh patches with -p%s, please specify -p0 or -p1 instead\n Cannot use --strip-trailing-whitespace on a patch that has shadowed files.\n Commands are: Conversion failed\n Converting meta-data to version %s\n Delivery address '%s' is invalid
 Diff failed, aborting\n Directory %s exists\n Display name '%s' contains invalid characters
 Display name '%s' contains non-printable or 8-bit characters
 Display name '%s' contains unpaired parentheses
 Failed to back up file %s\n Failed to copy files to temporary directory\n Failed to create patch %s\n Failed to import patch %s\n Failed to insert patch %s into file series\n Failed to patch temporary files\n Failed to remove file %s from patch %s\n Failed to remove patch %s\n Failed to rename %s to %s: %s
 File %s added to patch %s\n File %s disappeared!
 File %s exists\n File %s is already in patch %s\n File %s is not being modified\n File %s is not in patch %s\n File %s may be corrupted\n File %s modified by patch %s\n File %s removed from patch %s\n File \`%s' is located below \`%s'\n File series fully applied, ends at patch %s\n Fork of patch %s created as %s\n Fork of patch %s to patch %s failed\n Importing patch %s (stored as %s)\n Interrupted by user; patch %s was not applied.\n More recent patches modify files in patch %s. Enforce refresh with -f.\n More recent patches modify files in patch %s\n No next patch\n No patch removed\n No patches applied\n Nothing in patch %s\n Now at patch %s\n Option \`-n' can only be used when importing a single patch\n Options \`-c patch', \`--snapshot', and \`-z' cannot be combined.\n Patch %s appears to be empty, removing\n Patch %s appears to be empty; applied\n Patch %s does not apply (enforce with -f)\n Patch %s does not exist; applied empty patch\n Patch %s does not remove cleanly (refresh it or enforce with -f)\n Patch %s exists already, please choose a different name\n Patch %s exists already, please choose a new name\n Patch %s exists already\n Patch %s exists. Replace with -f.\n Patch %s is already applied\n Patch %s is applied\n Patch %s is currently applied\n Patch %s is not applied\n Patch %s is not in series file\n Patch %s is not in series\n Patch %s is now on top\n Patch %s is unchanged\n Patch %s needs to be refreshed first.\n Patch %s not applied before patch %s\n Patch %s not found in file series\n Patch %s renamed to %s\n Patch is not applied\n Refreshed patch %s\n Removed patch %s\n Removing patch %s\n Removing trailing whitespace from line %s of %s
 Removing trailing whitespace from lines %s of %s
 Renaming %s to %s: %s
 Renaming of patch %s to %s failed\n Replaced header of patch %s\n Replacing patch %s with new version\n SYNOPSIS: %s [-p num] [-n] [patch]
 The %%prep section of %s failed; results may be incomplete\n The -v option will show rpm's output\n The quilt meta-data in %s are already in the version %s format; nothing to do\n The quilt meta-data in this tree has version %s, but this version of quilt can only handle meta-data formats up to and including version %s. Please pop all the patches using the version of quilt used to push them before downgrading.\n The topmost patch %s needs to be refreshed first.\n The working tree was created by an older version of quilt. Please run 'quilt upgrade'.\n USAGE: %s {-s|-u} section file [< replacement]
 Unpacking archive %s\n Usage: quilt [--trace[=verbose]] [--quiltrc=XX] command [-h] ... Usage: quilt add [-p patch] {file} ...\n Usage: quilt annotate {file}\n Usage: quilt applied [patch]\n Usage: quilt delete [patch | -n]\n Usage: quilt diff [-p n] [-u|-U num|-c|-C num] [--combine patch|-z] [-R] [-P patch] [--snapshot] [--diff=utility] [--no-timestamps] [--no-index] [--sort] [--color] [file ...]\n Usage: quilt edit file ...\n Usage: quilt files [-v] [-a] [-l] [--combine patch] [patch]\n Usage: quilt fold [-p strip-level]\n Usage: quilt fork [new_name]\n Usage: quilt graph [--all] [--reduce] [--lines[=num]] [--edge-labels=files] [patch]\n Usage: quilt grep [-h|options] {pattern}\n Usage: quilt header [-a|-r|-e] [--backup] [--strip-diffstat] [--strip-trailing-whitespace] [patch]\n Usage: quilt import [-f] [-p num] [-n patch] patchfile ...\n Usage: quilt mail {--mbox file|--send} [--from ...] [--to ...] [--cc ...] [--bcc ...] [--subject ...]\n Usage: quilt new {patchname}\n Usage: quilt next [patch]\n Usage: quilt patches {file}\n Usage: quilt pop [-afRqv] [num|patch]\n Usage: quilt previous [patch]\n Usage: quilt push [-afqv] [--leave-rejects] [num|patch]\n Usage: quilt refresh [-p n] [-f] [--no-timestamps] [--no-index] [--diffstat] [--sort] [--backup] [--strip-trailing-whitespace] [patch]\n Usage: quilt remove [-p patch] {file} ...\n Usage: quilt rename [-p patch] new_name\n Usage: quilt series [-v]\n Usage: quilt setup [-d path-prefix] [-v] {specfile|seriesfile}\n Usage: quilt snapshot [-d]\n Usage: quilt top\n Usage: quilt unapplied [patch]\n Usage: quilt upgrade\n Warning: trailing whitespace in line %s of %s
 Warning: trailing whitespace in lines %s of %s
 Project-Id-Version: quilt
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2016-06-27 17:14+0000
PO-Revision-Date: 2010-09-30 16:44+0000
Last-Translator: Paco Molinero <paco@byasl.com>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:14+0000
X-Generator: Launchpad (build 18115)
 
Añadir uno o más archivos al parche más alto o al nombrado. Los archivos deben
ser añadidos al parche antes de ser modificados. Los archivos modificados por
parche ya aplicados sobre el parche especificado no se pueden añadir.

-p patch
	parche al que añadir archivos.
 
Crea un nuevo parche con el nombre de archivo especificado, e insertar después del
parche superior en el archivo de serie de parches.
 
Edite el(los) archivo(s) especificado(s) en \$EDITOR (%s) después de añadirlo(s) al
parche de más arriba.
 
Bifurcar el parche superior. Bifurcar un parche significa crear una copia literal
del mismo bajo un nuevo nombre, y utilizar ese nombre en lugar del original
en la serie actual. Esto es útil cuando un parche tiene que ser
modificado, pero la versión original se debe preservar, por ejemplo,
ya que se utiliza en otra serie, o para la historia. Una típica
secuencia de órdenes sería: fork, edit, refresh.

Si falta new_name, el nombre del parche bifurcado será el actual nombre
del parche, seguido de \ «-2 \». Si el nombre del parche ya termina en un
guión y número, el número se incrementa aún más (por ejemplo, patch.diff,
patch 2.diff, patch-3.diff).
 
Opciones globales:

--trace
	Ejecuta la orden en modo de traza bash (-x). Para depuración interna.

--quitrc archivo
	Usar el archivo de configuración especificado en vez de ~/.quiltrc (o
	/etc/quilt.quiltrc si ~/.quiltrc no existe). Vea la documentación
	en PDF para los detalles de su posible contenido.

--version
	Mostrar el número de versión y salir inmediatamente. 
Importar parches externos.

-p num
	Número de directorios a desmontar (strip) cuando se aplica (predeterminado=1)

-n patch
	Nombre del parche a usar en quilt. Esta opción sólo se puede
	usar cuando se importa un parche único.

-f	Sobrescribir/actualizar los parches existentes.
 
Inicializa un árbol fuente de un archivo de especificaciones rpm o un archivo de series quilt.

-d	prefijo de ruta opcional (subdirectorio).

-v	salida de depuración detallada.
 
Elimine todos los parches usando \«quilt pop -a» de la versión de quilt usada para crear este árbol de trabajo, o elimine el directorio %s y aplique los parches desde cero.\n 
Mostrar una lista de parches aplicados, o todos los parches hasta el
especificado en la serie de archivos.
 
Imprime una lista de parches que no son aplicados, o todos los parches que siguen
al parche especificado en el archivo de series.
 
Imprimir una lista anotada del archivo especificado mostrando qué
parche modifica cada linea.
 
Imprime la lista de archivos que han cambiado los parches especificados.

-a	Lista todos los archivos en todos los parches aplicados.

-l	Añade el nombre de parche a la salida.

-v	Detallada, salida más amigable.

--combinar un parche
	Crea una lista de todos los parches entre este parche y
	el parche de más arriba. Un nombre de parche \«-\» es equivalente
	a especificar el primer parche aplicado.

 
Imprimir la lista de parches que modifican al archivo especificado. (Usa una
heurística que determina cuales archivos son modificados por parches no aplicados.
Esta heurística es más lenta que escanear los parches aplicados.)

-v	Verbose, salida más amigable para el usuario.
 
Imprimir el nombre del siguiente parche después del especificado o del parche superior
en el archivo de series.
 
Imprime el nombre del parche anterior antes del especificado o el
parche más alto en el archivo de la serie.
 
Imprime el nombre del parche de más arriba en la pila actual aplicada.
 
Imprime los nombres de todos los parches en el archivo de serie.

-v	Detallado, salida más amigable al usuario.
 
Actualiza el parche especificado, o el primero predeterminado.
La documentación que viene antes del parche actual en el archivo del mismo
se conserva.

Es posible actualizar parches que no están en la cima.  Si algunos parches
en la cima del parche modifican los mismos archivos, el programa aborta
por defecto. Los parches todavía se pueden actualizar con -f. En tal caso este
programa imprimirá un aviso por cada archivo recurrente, los cambios por parches
más recientes serán ignorados, y sólo cambios en archivos que no han
sido modificados por parches más recientes terminaran en el parche
especificado.

-p n	Crea un parche con el estilo -p n  (-p0 o -p1 se permiten).

-u, -U num, -c, -C num
	Crea un diff (-u, -U) unificado con lineas num de contexto. Crea
	un diff (-c, -C) contextual con lineas num de contexto. El numero de
	lineas de contexto predeterminando es 3.

--no-timestamps
	No incluye los sellos de tiempo en los encabezados del parche.
	
--no-index
	No entrega Index: líneas.

--diffstat
	Agrega una sección diffstat al encabezado del parche, o reemplaza
	la sección diffstat existente.

-f	Fuerza  la actualización de un parche que no esta en la cima.

--backup
	Crea una copia de seguridad de la versión anterior de un parche como patch~.

--sort	Organiza los archivos por sus nombres en ves de preservar el orden original.

--strip-trailing-whitespace
	Franja de espacios blancos al final de las lineas.
 
Elimina uno o más archivos del parche superior o nombrado.  Los archivos
modificados por parches en la parte superior del parche especificado no se
pueden eliminar.

-p parche
	Parche de donde eliminar los archivos.
 
Elimina el parche especificado o el que se encuentre más arriba del archivo de serie.  Si el
parche ha sido aplicado, quilt intentará eliminarlo primero. (Sólo el
parche de más arriba puede ser removido ahora mismo.)

-n	Borrar el siguiente parche al de más arriba, en vez de el especificado
	o el de más arriba.
 
Renombra el parche superior o nombrado.

-p parche
	Parche a renombrar.
 
Toma una instantánea del estado de trabajo. Después de tomar la foto,
el árbol se puede modificar de forma habitual, incluyendo empuje y
popeado de parches. Se puede generar un diff contra el árbol
en el momento de la foto con \«quilt diff --snapshot».

-d	Sólo elimina la instantánea actual.
 
Actualiza los metadatos en un árbol de trabajo de una vieja versión de quilt a la
versión actual. Esta orden es sólo necesaria cuanto el formato de los metadatos
ha cambiado, y el árbol de trabajo todavía contiene metadatos en formato antiguo. En ese
caso, quilt requerirá ejecutarse \«quilt upgrade».
        quilt --version %s: Estoy confundido.
 Texto añadido a la cabecera del parche %s\n Parche aplicado %s (forzado; necesita actualizar)\n Aplicando el parche %s\n No se puede añadir un vínculo simbólico %s\n No puedo diferenciar parches con -p%s, por favor, especifique -p0 o -p1\n No se pueden refrescar los parches con-p%s, especifique -p0 o -p1 en su lugar\n No se puede usar --strip-trailing-whitespace en un parche que tiene archivos ensombrecidos.\n Las órdenes son: Fallo en la conversión\n Convirtiendo metadatos a la versión %s\n La dirección de entrega «%s» es inválida
 Falló Diff, abortando\n El directorio %s existe\n Muestra el nombre «%s» que contiene caracteres inválidos
 Muestra el nombre «%s» que contiene caracteres no imprimibles o que no son de 8 bits.
 Muestra el nombre «%s» que contiene un paréntesis desemparejado
 No se pudo hacer una copia de seguridad del archivo %s\n Fallo al copiar los archivos al directorio temporal\n Fallo al crear el parche %s\n Fallo al importar el parche %s\n No se ha podido insertar parche %s en la serie de archivos\n Fallo al parchear los achivos temporales\n Fallo al eliminar el archivo %s del parche %s\n Fallo al eliminar el parche %s\n Fallo al renombrar %s a %s: %s
 El archivo %s ha sido añadido al parche %s\n ¡Archivo %s desaparecido!
 El archivo %s existe\n El archivo %s ya esta en el parche %s\n El archivo %s no ha sido modificado\n El archivo %s no está en el parche %s\n El archivo %s puede estar dañado\n El archivo %s está modificado por el parche %s\n Archivo %s eliminado del parche %s\n El archivo \«%s» está situado bajo \«%s»\n Archivo de series completamente aplicado, finaliza en el parche %s\n Bifurcación del parche %s creado en %s\n Bifurcación del parche %s al parche %s falló\n Importando parche %s (almacenado en %s)\n Interrumpido por el usuario; el parche %s no fue aplicado.\n Más parches recientes modificados en la ruta %s. Forzar actualización con -f.\n Los parches más recientes modifican los archivos en el parche %s\n No hay siguiente parche\n No se eliminarion parches\n No hay parches aplicados\n Nada en el parche %s\n Ahora en el parche %s\n la opción \«-n» sólo se puede  usar cuando se importa un único parche\n Las opciones \«-c patch», \«--snapshot», y \«-z» no pueden ser combinadas.\n El parche %s parece estar vacío, eliminando\n El parche %s esta aparentemente vacio;  aplicado\n El parche %s no aplica (oblígelo con -f)\n El parche %s no existe; se aplicó un parche vacío\n El parche %s no elimina limpiamente (actualícelo u oblígelo con -f)\n El parche %s ya existe, elija un nombre diferente\n El parche %s ya existe, elija un nuevo nombre\n El parche %s ya existe\n El parche %s existe. Reemplácele con -f\n El parche %s se aplica ya\n El parche %s se ha aplicado\n El parche %s está aplicado actualmente\n El parche %s no está aplicado\n El parche %s no está en el archivo series\n El parche %s no está en la serie\n El parche %s está ahora arriba\n El parche %s está sin cambiar\n Es necesario actualizar el parche %s primero.\n Parche %s no aplicado antes del parche %s\n Parche %s no encontrado en el archivo de series\n Parche %s renombrado a %s\n El parche no está aplicado\n Parche actualizado %s\n parche %s\n eliminado Eliminando el parche %s\n Eliminando espacios en blanco al final en linea %s de %s
 Eliminando espacios en blanco al final en las lineas %s de %s
 Renombrando %s a %s: %s
 Fallo al renombrar el parche %s a %s\n Cabecera del parche %s reemplazada\n Remplazando parche %s con nueva versión\n SINOPSIS: %s [-p núm] [-n] [parch]
 La sección %%prep de %s falló; los resultados pueden ser incompletos\n La opción -v mostrará la salida rpm\n El quilt metadatos en %s ya está en el formato de la versión %s; nada que hacer\n Los metadatos de quilt en este árbol tiene la versión %s, pero esta versión de quilt sólo puede manipular formatos de metadatos hasta la versión %s. Saque todas los parches de la versión de quilt usada para presionarlos antes de bajar de versión.\n El parche %s de más arriba necesita ser refrescado primero.\n El árbol de trabajo fue creado por una versión antigua de quilt. Ejecute «quilt upgrade».\n USO: %s {-s|-u} archivo de sección [< reemplazo]
 Desempaquetando el archivo %s\n Uso: quilt [--trace[=verbose]] [--quiltrc=XX] orden [-h] ... Uso: quilt add [-p patch] {archivo} ...\n Uso: quilt annotate {archivo}\n Uso: quilt aplicado [parche]\n Uso: quilt delete [parche | -n]\n Uso: quilt diff [-p n] [-u|-U num|-c|-C num] [--combine patch|-z] [-R] [-P patch] [--snapshot] [--diff=utility] [--no-timestamps] [--no-index] [--sort] [--color] [archivo ...]\n Uso: quilt edit archivo ...\n Uso: quilt files [-v] [-a] [-l] [--combine patch] [patch]\n Uso: quilt fold [-p strip-level]\n Usage: quilt fork [nuevo_nombre]\n Uso: quilt graph [--all] [--reduce] [--lines[=num]] [--edge-labels=archivos] [ruta]\n Uso: quilt grep [-h|opciones] {patrttern}\n Uso: quilt header [-a|-r|-e] [--backup] [--strip-diffstat] [--strip-trailing-whitespace] [ruta]\n Uso: quilt import [-f] [-p num] [-n parch] archivoparch ...\n Uso: quilt mail {--mbox file|--send} [--from ...] [--to ...] [--cc ...] [--bcc ...] [--subject ...]\n Uso: quilt nuevo {nombre de parche}\n Uso: quilt next [parch]\n Uso: quilt patches {archivo}\n Uso: quilt pop [-afRqv] [num|parch]\n Uso: quilt previous [parch]\n Uso: quilt push [-afqv] [--leave-rejects] [núm|parche]\n Uso: quilt refresh [-p n] [-f] [--no-timestamps] [--no-index] [--diffstat] [--sort] [--backup] [--strip-trailing-whitespace] [parche]\n Uso: quilt remove [-p parche] {archivo} ...\n Uso: quilt rename [-p parche] nuevo_nombre\n Uso: quilt series [-v]\n Uso: quilt setup [-d prefij-ruta] [-v] {archespec|archseries}\n Uso: quilt snapshot [-d]\n Uso: quilt top\n Uso: quilt unapplied [parch]\n Uso: quilt upgrade\n Aviso: espacios en blanco al final en linea %s de %s
 Aviso: espacios en blanco al final en lineas %s de %s
 