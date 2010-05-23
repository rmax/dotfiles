"pylint 
setlocal makeprg=python\ /usr/bin/pylint\ --output-format=parseable\ --reports=n\ %
setlocal errorformat=%f:%l:\ [%t]%m,%f:%l:%m
