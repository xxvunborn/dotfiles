#Dot files

Coc ext: 
if coc javascript complied fail, run `:call coc#util#build()` in vim

:CocInstall
```
  coc-tsserver
  coc-json
```

:CocConfig
```
  {
    "suggest.echodocSupport": true,
    "diagnostic.checkCurrentLine": true
  }
```
