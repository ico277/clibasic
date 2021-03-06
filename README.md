# CLIBASIC <br>
<!----> <br>
### <ins>C</ins>ommand <ins>L</ins>ine <ins>I</ins>nterface <ins>B</ins>eginners <ins>A</ins>ll-purpose <ins>S</ins>ymbolic <ins>I</ins>nstruction <ins>C</ins>ode <br>
CLIBASIC is a version of BASIC designed to run in the command line or terminal
<!----> <br>
[![image](docs/clibasic_logo_rounded.png)](#?)
<!----> <br>
### Building and Running <br>
#### Linux/MacOS <br>
To build, use `make build`. <br>
To run, use `make run` or `./clibasic`. <br>
To build then run, use `make` (same as `make all`). <br>
#### Windows <br>
To build, use `make -f Makefile-Windows build`. <br>
To run, use `make -f Makefile-Windows run` or `.\clibasic.exe`. <br>
To build then run, use `make -f Makefile-Windows` (same as `make -f Makefile-Windows all`). <br>
<br>
### Required Packages/Programs <br>
#### Linux <br>
Debian (`apt`): `build-essential`, `libreadline-dev` <br>
Arch (`pacman`): `base-devel`, `readline` <br>
Apline (`apk`): `build-base`, `readline-dev` <br>
#### Windows <br>
Wimdows NT-10 (download): [`MinGW`](http://mingw-w64.org/doku.php/download/mingw-builds), [`Make for Windows`](http://gnuwin32.sourceforge.net/packages/make.htm) <br>
Windows 7-10 (`choco`): `mingw`, `make` <br>
#### MacOS <br>
MacOS Mojave-Big Sur (`brew`): `gcc`, `make`, `readline` <br>
<br>
### Notes <br>
- On Windows please execute the folowing command in CMD as Admin to enable ANSI escape sequnces on CMD:
    ```
    reg add HKEY_CURRENT_USER\Console /v VirtualTerminalLevel /t REG_DWORD /d 0x00000001 /f
    ```
- On Linux if CLIBASIC is not run in a terminal it will attempt to open in XTerm. CLIBASIC will only read arguments if it is run in a terminal.
- If the file `.clibasic_history` is present in the user's home directory CLIBASIC will automatically save history there. Run `_AUTOCMDHIST`, `_SAVECMDHIST` (without any arguments), or create the file `.clibasic_history` in your home/user folder to enable this feature. Remove the file to disable this feature.
- CLIBASIC will look for `AUTORUN.BAS` (and `autorun.bas` on Linux) in the user's home directory and run the file if present.
