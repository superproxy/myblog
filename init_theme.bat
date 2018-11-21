cd blog
if "%1"=="help" goto help
if "%1"=="" goto default

if "%1"=="icarus" goto icarus

if "%1"=="minos" goto minos



:default
git clone   https://github.com/superproxy/hexo-theme-icarus.git  themes/superproxy
rmdir themes\sharpcoder 
mklink   /j themes\sharpcoder  themes\superproxy
goto end

:icarus  
git clone  https://github.com/ppoffice/hexo-theme-icarus   themes/hexo-theme-icarus
rmdir themes\sharpcoder 
mklink   /j themes\sharpcoder  themes\hexo-theme-icarus
goto end

:minos
git clone https://github.com/ppoffice/hexo-theme-minos.git themes/hexo-theme-minos
rmdir themes\sharpcoder 
mklink   /j themes\sharpcoder  themes\hexo-theme-minos
goto end



:help
echo  default  icarus minos

:end

cd ..
