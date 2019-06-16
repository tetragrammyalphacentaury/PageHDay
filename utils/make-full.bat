for /f %%x in ('dir *%1.tex /B /O:-D') do set NEWEST=%%~nx& goto DONE
:DONE
pdflatex -output-directory=tmp -interaction=nonstopmode -output-format=pdf -draftmode %NEWEST%
biber "tmp/%NEWEST%"
pdflatex -output-directory=tmp -interaction=nonstopmode -output-format=pdf -draftmode %NEWEST%
pdflatex -output-directory=tmp -interaction=nonstopmode -output-format=pdf %NEWEST%
