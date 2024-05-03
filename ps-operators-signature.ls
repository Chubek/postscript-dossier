    abs: (num) -> (num)
    add: (num1 num2) -> (sum)
    aload: (array) -> (element1 element2 ...)
    anchorsearch: (string substring) -> (bool index)
    and: (bool1 bool2) -> (bool)
    arc: (x y radius angle1 angle2) ->
    arcn: (x y radius angle1 angle2) ->
    arct: (x1 y1 x2 y2 radius) ->
    arcto: (x1 y1 x2 y2 radius) ->
    array: (size) -> (array)
    ashow: (array dx dy) ->
    astore: (any1 any2 ... array index) ->
    atan: (num1 num2) -> (angle)
    awidthshow: (array ax ay) ->
    begin: - ->
    bind: (name) -> (procedure)
    bitshift: (int1 int2) -> (result)
    bytesavailable: (file) -> (count)
    cachestatus: (key) -> (status)
    ceiling: (num) -> (int)
    charpath: (string) ->
    clear: - ->
    cleardictstack: - ->
    cleartomark: - ->
    clip: - ->
    clippath: - ->
    closefile: (file) ->
    closepath: - ->
    colorimage: (width height n components data) ->
    concat: (matrix) ->
    concatmatrix: (a b c d tx ty) ->
    condition: (condition proc) ->
    configurationerror: - ->
    copy: (any1 ... anyn n) -> (any1 ... anyn any1 ... anyn)
    copypage: - ->
    cos: (angle) -> (cosine)
    count: (any1 ... anyn) -> (n)
    countdictstack: - -> (count)
    countexecstack: - -> (count)
    counttomark: (any1 ... mark anyn) -> (n)
    cshow: (string) ->
    currentblackgeneration: - -> (dictionary)
    currentcacheparams: - -> (dictionary)
    currentcmykcolor: - -> (c m y k)
    currentcolor: - -> (color)
    currentcolorrendering: - -> (dictionary)
    currentcolorscreen: - -> (dictionary)
    currentcolorspace: - -> (colorspace)
    currentcolortransfer: - -> (dictionary)
    currentcontext: - -> (context)
    currentdash: - -> (array)
    currentdevparams: - -> (dictionary)
    currentdict: - -> (dictionary)
    currentfile: - -> (file)
    currentflat: - -> (flatness)
    currentfont: - -> (font)
    currentglobal: - -> (bool)
    currentgray: - -> (gray)
    currentgstate: - -> (dictionary)
    currenthalftone: - -> (dictionary)
    currenthalftonephase: - -> (dictionary)
    currenthsbcolor: - -> (h s b)
    currentlinecap: - -> (linecap)
    currentlinejoin: - -> (linejoin)
    currentlinewidth: - -> (linewidth)
    currentmatrix: - -> (matrix)
    currentmiterlimit: - -> (miterlimit)
    currentobjectformat: - -> (objectformat)
    currentoverprint: - -> (overprint)
    currentpacking: - -> (bool)
    currentpagedevice: - -> (dictionary)
    currentpoint: - -> (x y)
    currentrgbcolor: - -> (r g b)
    currentscreen: - -> (screen)
    currentshared: - -> (bool)
    currentstrokeadjust: - -> (bool)
    currentsystemparams: - -> (dictionary)
    currenttransfer: - -> (transfer)
    currentundercolorremoval: - -> (undercolorremoval)
    currentuserparams: - -> (dictionary)
    curveto: (x1 y1 x2 y2 x3 y3) ->
    cvi: (num) -> (int)
    cvlit: (any) -> (any)
    cvn: (num) -> (name)
    cvr: (num) -> (real)
    cvrs: (num) -> (string)
    cvs: (any) -> (string)
    cvx: (any) -> (executable)
    def: (any name) ->
    defaultmatrix: - -> (matrix)
    definefont: (font dictionary) ->
    defineresource: (category resource proc) ->
    defineusername: (category name) ->
    defineuserobject: (class dictionary) ->
    deletefile: (filename) ->
    detach: - ->
    deviceinfo: (category) -> (value)
    dict: (size) -> (dictionary)
    dictfull: - -> (bool)
    dictstack: - -> (dictionary1 ... dictionaryn)
    dictstackoverflow: - -> (bool)
    dictstackunderflow: - -> (bool)
    div: (num1 num2) -> (quotient)
    dtransform: (dx dy) -> (dx' dy')
    dup: (any) -> (any any)
    echo: (any1 ... anyn) ->
    eexec: (string) -> (string)
    end: - ->
    eoclip: - ->
    eofill: - ->
    eoviewclip: - ->
    eq: (any1 any2) -> (bool)
    erasepage: - ->
    errordict: - -> (dictionary)
    exch: (any1 any2) -> (any2 any1)
    exec: (procedure) ->
    execform: (name) ->
    execstack: - -> (procedure1 ... proceduren)
    execstackoverflow: - -> (bool)
    execuserobject: (any) ->
    executeonly: (procedure) -> (procedure)
    executive: (proc) ->
    exit: - ->
    exitserver: - ->
    exp: (num) -> (exponential)
    gcheck: (proc) -> (bool)
    ge: (num1 num2) -> (bool)
    get: (array/dict key) -> (value)
    getinterval: (string int1 int2) -> (substring)
    globaldict: - -> (dictionary)
    glyphshow: (name) ->
    grestore: - ->
    grestoreall: - ->
    gsave: - ->
    gstate: - -> (dictionary)
    gt: (num1 num2) -> (bool)
    handleerror: - ->
    identmatrix: - -> (matrix)
    idiv: (int1 int2) -> (quotient)
    idtransform: (x y) -> (x' y')
    if: (bool proc1 [proc2]) ->
    ifelse: (bool proc1 proc2) ->
    image: (width height bits/comp matrix data) ->
    imagemask: (image matrix) ->
    index: (any1 ... anyn int) -> (anyi)
    ineofill: - ->
    infill: - ->
    initclip: - ->
    initgraphics: - ->
    initmatrix: - ->
    initviewclip: - ->
    instroke: - ->
    internaldict: - -> (dictionary)
    interrupt: - ->
    inueofill: - ->
    inufill: - ->
    inustroke: - ->
    invalidaccess: - ->
    invalidcontext: - ->
    invalidexit: - ->
    invalidfileaccess: - ->
    invalidfont: - ->
    invalidid: - ->
    invalidrestore: - ->
    invertmatrix: (a b c d tx ty) -> (ainv binv cinv dinv txinv tyinv)
    ioerror: - ->
    itransform: (x y) -> (x' y')
    join: (string1 string2) -> (string)
    known: (name) -> (bool)
    kshow: (string) ->
    languagelevel: - -> (int)
    le: (num1 num2) -> (bool)
    length: (array/dict/string) -> (int)
    limitcheck: - ->
    lineto: (x y) ->
    ln: (num) -> (num)
    load: (name) -> (procedure)
    lock: (lock) ->
    log: (num) -> (num)
    loop: (proc1 int1 proc2) ->
    lt: (num1 num2) -> (bool)
    makefont: (fontname) -> (font)
    makepattern: (matrix paintproc) -> (pattern)
    mark: - ->
    matrix: (a b c d tx ty) -> (matrix)
    maxlength: (string) -> (int)
    mod: (int1 int2) -> (remainder)
    monitor: (dictionary proc) ->
    moveto: (x y) ->
    mul: (num1 num2) -> (product)
    ne: (any1 any2) -> (bool)
    neg: (num) -> (negation)
    newpath: - ->
    noaccess: (errorname) ->
    nocurrentpoint: - -> (bool)
    not: (bool) -> (bool)
    notify: (event) ->
    null: - -> (null)
    nulldevice: - -> (file)
    or: (bool1 bool2) -> (bool)
    packedarray: (int1 ... intn packedarray) -> (array)
    pathbbox: (path) -> (llx lly urx ury)
    pathforall: (path proc) ->
    pop: (any) -> -
    print: (any1 ... anyn) ->
    printobject: (object) ->
    product: (num1 ... numn) -> (product)
    prompt: (promptstring) -> (response)
    pstack: - ->
    put: (value key array/dict) ->
    putinterval: (substring array index) ->
    quit: - ->
    rand: - -> (random)
    rangecheck: - ->
    rcheck: (proc) -> (bool)
    rcurveto: (x1 y1 x2 y2 x3 y3) ->
    read: (file) -> (status)
    readhexstring: (file maxlength) -> (string)
    readline: (file) -> (string)
    readonly: (array/dict) ->
    readstring: (file maxlength) -> (string)
    realtime: - -> (milliseconds)
    rectclip: (llx lly urx ury) ->
    rectfill: (llx lly urx ury) ->
    rectstroke: (llx lly urx ury) ->
    rectviewclip: (llx lly urx ury) ->
    renamefile: (oldname newname) ->
    repeat: (proc1 int1) ->
    resetfile: (file) ->
    resourceforall: (category proc) ->
    resourcestatus: (category resourcename) -> (status)
    restore: - ->
    reversepath: - ->
    revision: - -> (string)
    rlineto: (dx dy) ->
    rmoveto: (dx dy) ->
    roll: (int1 int2 ... intN intJ) -> (intJ ... int1 int2 ... intN)
    rootfont: (font) -> (font)
    rotate: (angle) ->
    round: (num) -> (int)
    rrand: (num1 num2) -> (random)
    run: (file) ->
    save: - ->
    scale: (sx sy) ->
    scalefont: (font size) -> (font)
    scheck: (proc) -> (bool)
    search: (substring string) -> (bool index)
    selectfont: (font) ->
    serialnumber: - -> (int)
    setbbox: (llx lly urx ury) ->
    setblackgeneration: (dictionary) ->
    setcachedevice: (llx lly urx ury xres yres) ->
    setcachelimit: (limit) ->
    setcacheparams: (key value) ->
    setcharwidth: (wx wy) ->
    setcmykcolor: (c m y k) ->
    setcolor: (color) ->
    setcolorrendering: (dictionary) ->
    setcolorscreen: (dictionary) ->
    setcolorspace: (colorspace) ->
    setcolortransfer: (dictionary) ->
    setdash: (array offset) ->
    setdevparams: (dictionary) ->
    setfileposition: (file position) -> (bool)
    setflat: (flatness) ->
    setfont: (font) ->
    setglobal: (bool) ->
    setgray: (gray) ->
    setgstate: (dictionary) ->
    sethalftone: (dictionary) ->
    sethalftonephase: (dictionary) ->
    sethsbcolor: (h s b) ->
    setlinecap: (linecap) ->
    setlinejoin: (linejoin) ->
    setlinewidth: (linewidth) ->
    setmatrix: (a b c d tx ty) ->
    setmiterlimit: (miterlimit) ->
    setobjectformat: (objectformat) ->
    setoverprint: (overprint) ->
    setpacking: (bool) ->
    setpagedevice: (dictionary) ->
    setpattern: (pattern painttype) ->
    setrgbcolor: (r g b) ->
    setscreen: (screen) ->
    setshared: (bool) ->
    setstrokeadjust: (bool) ->
    setsystemparams: (dictionary) ->
    settransfer: (transfer) ->
    setucacheparams: (key value) ->
    setundercolorremoval: (undercolorremoval) ->
    setuserparams: (dictionary) ->
    setvmthreshold: (threshold) ->
    shareddict: - -> (dictionary)
    show: (string) ->
    showpage: - ->
    sin: (angle) -> (sine)
    sqrt: (num) -> (num)
    srand: (seed) ->
    stack: (any1 ... anyn) -> (any1 ... anyn any1 ... anyn)
    stackoverflow: - -> (bool)
    stackunderflow: - -> (bool)
    start: - ->
    startjob: - ->
    status: (file) -> (status)
    statusdict: - -> (dictionary)
    stop: - ->
    stopped: (errorname) -> -
    store: (any value name) ->
    string: (count) -> (string)
    stringwidth: (string) -> (wx wy)
    stroke: - ->
    strokepath: - ->
    sub: (num1 num2) -> (difference)
    syntaxerror: - ->
    systemdict: - -> (dictionary)
    timeout: - ->
    token: (string) -> (token)
    transform: (x y) -> (x' y')
    translate: (tx ty) ->
    true: - -> (bool)
    truncate: (real) -> (int)
    type: (any) -> (typename)
    typecheck: - ->
    uappend: (string1 string2) -> (string)
    ucache: (key value) ->
    ucachestatus: (key) -> (status)
    ueofill: - ->
    ufill: - ->
    undef: (name) ->
    undefined: - -> (undefined)
    undefinedfilename: - ->
    undefinedresource: (errorname) ->
    undefinedresult: - ->
    undefinefont: (fontname) ->
    undefineresource: (category resourcename) ->
    undefineuserobject: (class) ->
    unmatchedmark: - ->
    unregistered: (name) -> (registered)
    upath: (path flatness accuracy) -> (path)
    userdict: - -> (dictionary)
    usertime: - -> (int)
    ustroke: - ->
    ustrokepath: - ->
    version: - -> (real)
    viewclip: (llx lly urx ury) ->
    viewclippath: - ->
    vmreclaim: - ->
    vmstatus: - -> (dictionary)
    wait: (milliseconds) ->
    wcheck: (proc) -> (bool)
    where: (name) -> (bool)
    widthshow: (string wx wy) ->
    write: (string) ->
    writehexstring: (string) ->
    writeobject: (any file) ->
    writestring: (string) ->
    wtranslation: (wx wy) ->
    xcheck: (proc) -> (bool)
    xor: (bool1 bool2) -> (bool)
    xshow: (string x y) ->
    xyshow: (string x y) ->
    yield: - ->
    yshow: (string x y) -> (any)

