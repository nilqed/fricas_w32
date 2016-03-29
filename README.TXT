========================
FriCAS V 1.2.7 (Windows)
========================

Version 29-MAR-2016

--------
Overview
--------

This is a native Windows version of FriCAS built by MinGW/msys (32bit) from the pre-generated source tarball. The Lisp compiler used was SBCL 1.3.0:

  * fricas-1.2.7-full.tar.bz2
  * sbcl-1.3.0-x86-windows-binary.msi 


Thanks to Grégory Vanuxem for providing the patch that made this possible: 

https://groups.google.com/forum/#!searchin/fricas-devel/mingw/fricas-devel/BAk-Qpgicwc/DD4RJfO8DgAJ

The Installer was made using NSIS (zip2exe). The modified "Modern.nsh" is in the "misc"
folder.


--------------
Running FriCAS
--------------

Start -> FriCAS -> fricas

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

