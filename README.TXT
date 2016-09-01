========================
FriCAS V 1.3.0 (Windows)
========================

Version 01-SEP-2016
Release: FriCAS w32, release 1.3.0:
https://github.com/nilqed/fricas_w32/releases/tag/v1.3.0


FriCAS home: http://fricas.sourceforge.net/
Documentation: http://fricas.github.io/

--------
Download
--------


Windows Installer (recommended):

https://github.com/nilqed/fricas_w32/releases/download/v1.3.0/fricas_w32.exe


ZIP-file:

https://github.com/nilqed/fricas_w32/releases/download/v1.3.0/fricas_w32.zip



--------
Overview
--------

This is a native Windows version of FriCAS built by MinGW/msys (32bit) from the pre-generated source tarball. The Lisp compiler used was SBCL 1.3.0:

  * fricas-1.2.7-full.tar.bz2
  * sbcl-1.3.0-x86-windows-binary.msi 


The Installer was made using NSIS (zip2exe). The modified "Modern.nsh" is in the "misc"
folder.


*********************************
** Attention: Windows > 7 User **
*********************************

FriCAS will not work correctly in the new console (e.g. on Windows 10). This
is due to incompatible changes of the console environment by Microsoft. Although
there is a legacy mode, but ...

The jEdit Console plugin, however, still works on all Windows versions. 

Work around: Use fricas-mintty instead.

For details and config see:
- https://mintty.github.io/mintty.1.html
- https://github.com/mintty/mintty/wiki/Tips

You probably want to edit fricas_mintty.cmd ...

--------------
Running FriCAS
--------------

Start -> FriCAS -> fricas or fricas_mintty

or click on the desktop icon.

-------------
Documentation
-------------

Start -> FriCAS -> user-guide  (contents)
Start -> Fricas -> ug-index    (index)


---------------
Build Installer
---------------

* Create a zip file: fricas_w32.zip from msys install
* Get NSIS (nullsoft scriptable install system 2.50)
* cd ?\NSIS\Contrib\zip2exe
* rename Modern.nsh Modern.nsh_original
* copy misc/Modern.nsh ?\NSIS\Contrib\zip2exe 
* Start NSIS Menu -> click Installer based on ZIP-file

---------
Uninstall
---------

Start -> right click FriCAS -> delete
Delete desktop icon
Goto installation location and remove the folder.

There is no uninstaller (no registry used).

---------------
Texmacs & JEdit
---------------
In order to configure TeXmacs or JEdit use the command files in the 
installation directory as basis. E.g. fricas-texmacs.cmd or fricas-eval.cmd. 

---------
Customize
---------
Customizing the console can be done as usual (QuickEdit, font, colors). 

