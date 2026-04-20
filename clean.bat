@echo off
cd /d "%~dp0"
attrib +r main.tex
attrib +r main.pdf
del main.* /q
attrib -r main.tex
attrib -r main.pdf
echo Done!
pause