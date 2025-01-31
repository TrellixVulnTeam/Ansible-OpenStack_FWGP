��    F      L  a   |                      	                     '  ,   4     a  &   s     �     �  $   �     �                    '     3  
   :     E     T     \  	   m     w  
   |     �     �     �     �     �  �   �    �     �
     �
     �
     �
     �
             )   7     a  	   g  
   q  �   |  �  -  E  �  �  %  �   �  �  �  ]     
   t       
   �  �   �  +   /     [  �   d     �          $     C     `  ,   y     �     �     �  D  �  �    �  �     ?  	   A     K     S     _     h     w  7   �     �  5   �          "  /   >  *   n  	   �     �     �     �     �     �     �             
   <     G  
   N     Y  '   p     �     �     �  �   �  0  �     �     �     �     �  %      '   3   %   [   8   �      �      �      �   �   �   �  �!  �  �#    �%  �   �'  �  �(  z   �*     +     %+     -+  �   >+  A   ,     \,  �   k,     #-     =-  $   W-  ,   |-     �-  6   �-      .     .     !.  �  ..  C  �/                  @          :   <   7       4                  ?          %       ;   9           >         *            
   )   .   0      1          E   /       "   F      2                             D          A   -       5                       +          '   $       #         C   6              (   =          ,          B   &   3          	   !   8      About Add Application Browse Config Configure... Could not construct a property list for (%s) Could not load %s Could not write property list for (%s) Could not write to %s Could not write to (%s) Couldn't create pixmap from file: %s Couldn't find pixmap file: %s Credits DSN Database System Description Driver Driver Lib Driver Manager Drivers Enter a DSN name FileUsage Name ODBCConfig ODBCConfig - Credits ODBCConfig - Database Systems ODBCConfig - Drivers ODBCConfig - odbc.ini ODBCConfig - odbcinst.ini Open DataBase Connectivity (ODBC) was developed to be an Open and portable standard for accessing data. unixODBC implements this standard for Linux/UNIX. Perhaps the most common type of Database System today is an SQL Server

SQL Servers with Heavy Functionality
  ADABAS-D
  Empress
  Sybase - www.sybase.com
  Oracle - www.oracle.com

SQL Servers with Lite Functionality
  MiniSQL
  MySQL
  Solid

The Database System may be running on the local machine or on a remote machine. It may also store its information in a variety of ways. This does not matter to an ODBC application because the Driver Manager and the Driver provides a consistent interface to the Database System. Remove Select File Select a DSN to Remove Select a DSN to configure Select a driver to Use Select a driver to configure Select a driver to remove Select the DRIVER to use or Add a new one Setup Setup Lib System DSN System data sources are shared among all users of this machine.These data sources may also be used by system services. Only the administrator can configure system data sources. The Application communicates with the Driver Manager using the standard ODBC calls.

The application does not care; where the data is stored, how it is stored, or even how the system is configured to access the data.

The Application only needs to know the data source name (DSN)

The Application is not hard wired to a particular database system. This allows the user to select a different database system using the ODBCConfig Tool. The Driver Manager carries out a number of functions, such as:
1. Resolve data source names via odbcinst lib)
2. Loads any required drivers
3. Calls the drivers exposed functions to communicate with the database. Some functionality, such as listing all Data Source, is only present in the Driver Manager or via odbcinst lib). The ODBC Drivers contain code specific to a Database System and provides a set of callable functions to the Driver Manager.
Drivers may implement some database functionality when it is required by ODBC and is not present in the Database System.
Drivers may also translate data types.

ODBC Drivers can be obtained from the Internet or directly from the Database vendor.

Check http://www.unixodbc.org for drivers These drivers facilitate communication between the Driver Manager and the data server. Many ODBC drivers  for Linux can be downloaded from the Internet while others are obtained from your database vendor. This is the main configuration file for ODBC.
It contains Data Source configuration.

It is used by the Driver Manager to determine, from a given Data Source Name, such things as the name of the Driver.

It is a simple text file but is configured using the ODBCConfig tool.
The User data sources are typically stored in ~/.odbc.ini while the System data sources are stored in /etc/odbc.ini
 This is the program you are using now. This program allows the user to easily configure ODBC. Trace File Tracing Tracing On Tracing allows you to create logs of the calls to ODBC drivers. Great for support people, or to aid you in debugging applications.
You must be 'root' to set Unable to find a Driver line for this entry User DSN User data source configuration is stored in your home directory. This allows you configure data access without having to be system administrator gODBCConfig - Add DSN gODBCConfig - Appication gODBCConfig - Configure Driver gODBCConfig - Driver Manager gODBCConfig - New Driver gODBCConfig - ODBC Data Source Administrator http://www.unixodbc.org odbc.ini odbcinst.ini odbcinst.ini contains a list of all installed ODBC Drivers. Each entry also contains some information about the driver such as the file name(s) of the driver.

An entry should be made when an ODBC driver is installed and removed when the driver is uninstalled. This can be done using ODBCConfig or the odbcinst command tool. unixODBC consists of the following components

- Driver Manager
- GUI Data Manager
- GUI Config
- Several Drivers and Driver Config libs
- Driver Code Template
- Driver Config Code Template
- ODBCINST lib
- odbcinst (command line tool for install scripts)
- INI lib
- LOG lib
- LST lib
- TRE lib
- SQI lib
- isql (command line tool for SQL)

All code is released under GPL and the LGPL license.
 Project-Id-Version: unixodbc
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2003-12-02 14:45+0000
PO-Revision-Date: 2009-03-25 18:54+0000
Last-Translator: Evan R. Murphy <Unknown>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 16:46+0000
X-Generator: Launchpad (build 18115)
   Acerca de Añadir Aplicación Examinar Configuración Configurar... No se pudo construir una lista de propiedades para (%s) No se pudo cargar %s No se pudo escribir la lista de propiedades para (%s) No se pudo escribir en %s No se pudo escribir en (%s) No se pudo crear el pixmap desde el archivo: %s No se pudo encontrar el archivo pixmap: %s Créditos DSN Sistema de base de datos Descripción Controlador Biblioteca de controladores Administrador de controlador Controladores Introduzca un nombre de DSN UsoArchivo Nombre ODBCConfig ODBCConfig - Créditos ODBCConfig - Sistemas de bases de datos ODBCConfig - Controladores ODBCConfig - odbc.ini ODBCConfig - odbcinst.ini Open DataBase Connectivity (ODBC) se desarrolló para ser un estándar abierto y estable de acceso a datos. unixODBC implementa este estándar para Linux/UNIX. Probablemente el tipo más común de sistema de bases de datos sea SQL Server

Sistemas SQL Server con alta funcionalidad
  ADABAS-D
  Empress
  Sybase - www.sybase.com
  Oracle - www.oracle.com

Sistemas SQL Server con pequeña funcionalidad
  MiniSQL
  MySQL
  Solid

El sistema de bases de datos puede ejecutarse en una máquina local o remota. Puede almacenar su información de varias maneras. Esto no le afecta a una aplicación ODBC, ya que el administrador de controladores y el controlador proveen un interfaz consistente al sistema de bases de datos. Eliminar Seleccionar archivo Seleccione un DSN a eliminar Seleccione un DSN a configurar Seleccionar un controlador a utilizar Seleccionar un controlador a configurar Seleccionar un controlador a eliminar Seleccione el CONTROLADOR para su uso o agrege uno nuevo Configuración Biblioteca de configuración DSN del sistema Los orígenes de datos del sistema se comparten por todos los usuarios de esta máquina. Esos orígenes de datos también pueden ser usados por los servicios del sistema. Sólo el administrador puede configurarlos. La Aplicación se comunica con el administrador de controladores usando llamadas ODBC estándares.

A la aplicación no le importa; donde se guardan los datos, cómo se guardan, o incluso cómo está configurado el sistema para acceder a los datos.

La aplicación sólo necesita saber el nombre de origen de datos (DSN)

La aplicación no está atada a un gestor de bases de datos particular. Esto permite al usuario seleccionar una base de datos diferente usando la herramienta ODBCConfig. El administrador de controladores conlleva un conjunto de funciones, tal como:
1. Resolver los nombres de los orígenes de datos a través de la librería odbcinst
2. Cargar cualquier controlador que se requiera
3. Hacer las llamadas a las funciones expuestas de los controladores para la comunicación con la base de datos. Ciertas funcionalidades, como listar todos los orígenes de datos, sólo están presentes en el administrador de controladores o a través de la librería odbcinst Los controladores ODBC contienen código específico para un sistema de bases de datos y provee un conjunto de funciones que pueden ser llamadas desde el administrador de controladores.
Los controladores pueden implementar ciertas funcionalidades de base de datos cuando sea requerido por ODBC y no esté presente en el sistema de bases de datos.
Los controladores pueden también traducir entre tipos de datos.

Los controladores ODBC pueden obtenerse desde Internet o directamente desde el distribuidor de la base de datos. Estos controladores facilitan la comunicación entre el administrador de controladores y el servidor de datos.  Muchos controladores ODBC para Linux se pueden descargar del Internet mientras que otros se obtienen del vendedor de la base de datos. Este es el fichero principal de configuración para ODBC.
Contiene configuraciones de orígenes de datos.

Se usa por el administrador de controladores para determinar, a partir de un nombre de origen de datos, cosas tales como el nombre del controlador.

Es un simple fichero de texto, pero se configura utilizando la herramienta ODBCConfig.
Los orígenes de datos de usuario se almacenan típicamente en ~/.odbc.ini mientras que los orígenes de datos del sistema se almacenan en /etc/odbc.ini
 Este es el programa que está usando en este momento. Este programa permite al usuario configurar de manera sencilla ODBC. Archivo de trazas Trazado Trazado activado Las trazas le permiten crear registros de las llamadas a los controladores ODBC. Es importante para el personal de soporte, o para ayudarle en la depuración de aplicaciones. 
Debe de ser superusuario para establecerlo. Incapaz de encontrar una línea del controlador para esta entrada DSN de usuario La configuración de los orígenes de datos de usuario se almacena en su directorio personal. Esto le permite configurar el acceso a datos sin tener que ser administrador del sistema. gODBCConfig - Añadir DSN gODBCConfig - Aplicación gODBCConfig - Configurar controlador gODBCConfig - Administrador de controladores gODBCConfig - Nuevo controlador gODBCConfig - Administrador de orígenes de datos ODBC http://www.unixodbc.org odbc.ini odbcinst.ini odbcinst.ini contiene una lista de todos los controladores ODBC instalados. Cada entrada contiene cierta información sobre el controlador, tal como el/los nombre/s de fichero/s que lo componen.

Debería de añadirse una entrada cada vez que se instale un controlador ODBC, y eliminarse cuando se desinstale. Esto puede hacerse usando ODBCConfig o la herramienta de comando odbcinst. unixODBC consta de los siguientes componentes:

- Administrador de controladores
- Administrador de datos GUI
- Configuración GUI
- Varios controladores y librerías de configuración de controladores
- Plantilla de código de controlador
- Plantilla de código de configuración de controlador
- librería ODBCINST
- odbcinst (utilidad de línea de comandos para instalar scripts)
- librería INI
- librería LOG
- librería LST
- librería TRE
- librería SQI
- isql (herramienta de línea de comandos para SQL)

Todo el código está publicado bajo las licencias GPL y LGPL.
 