" Set the filetype based on contents of first line
"
"
if did_filetype()
    finish
endif

if getline(1) =~ '^.*WAJAC.*$'
    setfiletype wajac
elseif getline(1) =~ '^ *%.*FRAMEWORK.*$'
    setfiletype framework
elseif getline(1) =~ '^ *%.*MANAGER.*$'
    setfiletype manager
elseif getline(1) =~ '^ *%.*PRESEL.*$'
    setfiletype presel
elseif getline(1) =~ '^ *%.*PREFRAME.*$'
    setfiletype preframe
elseif getline(1) =~ '^ *%.*PREFEM.*$'
    setfiletype prefem
elseif getline(1) =~ '^ *.*HEAD.*$'
    setfiletype usfos
elseif getline(1) =~ '^ *.*GENSOD.*$'
    setfiletype gensod
endif
