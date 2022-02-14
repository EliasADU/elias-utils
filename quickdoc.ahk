;   New text file

#IfWinActive AHK_CLASS #32770
    Capslock & a::
#IfWinActive AHK_CLASS CabinetWClass
    Capslock & a::

    ; make it work even though a file is previously selected
    Send {PgUp} ; Force select the first file 
    Send ^{Space} ; Clear the selection

    Sleep 250 ; Remove delay if not required
    Send {AppsKey} ; Menu key
    Send w ; New
    Send t ; Text Document
    return
#IfWinActive
