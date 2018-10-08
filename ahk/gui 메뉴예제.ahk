Menu, FileMenu, Add, &Open    Ctrl+O, MenuFileOpen  ; See remarks below about Ctrl+O.
Menu, FileMenu, Add, E&xit, MenuHandler
Menu, HelpMenu, Add, &About, MenuHandler
Menu, MyMenuBar, Add, &File, :FileMenu  ; Attach the two sub-menus that were created above.
Menu, MyMenuBar, Add, &Help, :HelpMenu
Gui, Menu, MyMenuBar