Config = {
      MenuHead = '',
      -- Change the language of the menu here!.
      -- Note fr and de are google translated, if you would like to help out with translation / just fix it for your server check below and change translations yourself
      -- try en, fr, de or sv.
	MenuLanguage = 'en',	
      -- Set this to true to enable some extra prints
	DebugDisplay = false,
      -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
	EnableXtoCancel = true,
      -- Set this to true if you want to disarm the player when they play an emote.
	DisarmPlayer= false,
      -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
      AllowedInCars = true,
      -- You can disable the (F9) menu here / change the keybind.
	MenuKeybindEnabled = true,
	MenuKeybind = 'F3', -- Get the button name here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
      -- You can disable the Favorite emote KeyBinding here.
	FavKeybindEnabled = true,
	FavKeybind = '', -- Get the button name here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
      -- You can change the header image for the f9 menu here
      -- Use a 512 x 128 image!
      -- NOte this might cause an issue of the image getting stuck on peoples screens
	CustomMenuEnabled = true,
	MenuImage = "https://i.imgur.com/kgzvDwQ.png",
      -- You can change the menu position here
	MenuPosition = "right", -- (left, right)
      -- You can disable the Ragdoll KeyBinding here.
	RagdollEnabled = true,
	RagdollKeybind = '', -- Get the button number here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
      -- You can disable the Facial Expressions menu here.
	ExpressionsEnabled = true,
      -- You can disable the Walking Styles menu here.
	WalkingStylesEnabled = true,	
      -- You can disable the Shared Emotes here.
      SharedEmotesEnabled = true,
      CheckForUpdates = false,
      -- Keybinds
      KeyBinding = true,
}


Config.Languages = {
  ['en'] = {
        ['emotes'] = '~p~???????????Animace???????????',
        ['danceemotes'] = "~o~???? Tance",
        ['propemotes'] = "????~g~Animace s objektama",
        ['animalemotes'] = "???? Zv????ec?? animace",
        ['favoriteemotes'] = "????~y~ Oblibene",
        ['favoriteinfo'] = "Vyber si svou oblibenou animaci.",
        ['rfavorite'] = "Restartovat",
        ['prop2info'] = "??? Animace s objektama nakonci",
        ['set'] = "Nastavit (",
        ['setboundemote'] = ") jako emote na klavese?",
        ['newsetemote'] = "~w~ je ted tvuj emote na klavesy, zmackni ~g~CapsLock~w~ aby si to pouzil.",
        ['cancelemote'] = "~r~???Zru??it animaci",
        ['cancelemoteinfo'] = "~r~X~w~ Zru??it animaci ",
        ['walkingstyles'] = "~b~?????????????Zpusob Chozeni",
        ['resetdef'] = "Restartovat do defaultu",
        ['normalreset'] = "Normal (Reset)",
        ['moods'] = "~m~????Mimika",
        ['infoupdate'] = "Informace",
        ['infoupdateav'] = "Informace ",
        ['spray'] = "Dr??te ~y~CAPSLOCK~w~ pro sprejov??n??",
        ['infoupdateavtext'] = "WEB ~y~~w~",
        ['suggestions'] = "N??pady?",
        ['suggestionsinfo'] = "'discord.gg/2pNUR28' pripojte se na nas discord jestli mate napad! ??????",
        ['notvaliddance'] = "Neplatny tanec.",
        ['notvalidemote'] = "Neplatna animace.",
        ['nocancel'] = "Zadna animace na zruseni.",
        ['maleonly'] = "Tato animace je jenom pro muze !",
        ['emotemenucmd'] = "Do /emotemenu for a menu.",
        ['shareemotes'] = "???? Sd??len?? Animace",
        ['shareemotesinfo'] = "Pozvat nejbli??????ho hr????e na animaci",
        ['sharedanceemotes'] = "???? Sdilene tance",
        ['notvalidsharedemote'] = "neplatna sdilena animace.",
        ['sentrequestto'] = "Poslana zadost ~y~",
        ['nobodyclose'] = "Nikdo ~r~neni~w~ nablizko.",
        ['doyouwanna'] = "~y~Y~w~ aby jsi prijmul, ~r~H~w~ pro zamitnuti (~g~",
        ['refuseemote'] = "Animace zamitnuta.",
        ['makenearby'] = "udelat aby nejblizsi hrac hral",
        ['camera'] = "Zmackni ~y~CAPSLOCK~w~ aby jsi pouzila kameru.",
        ['makeitrain'] = "Zmackni ~y~CAPSLOCK~w~ aby si zacal hazet.",
        ['pee'] = "Drz ~y~CAPSLOCK~w~ aby jsi cural.",
        ['spraychamp'] = "Drz ~y~CAPSLOCK~w~ aby jsi shakoval",
        ['bound'] = "Nastavit ",
        ['to'] = "na",
        ['currentlyboundemotes'] = " Nastavene Animace:",
        ['notvalidkey'] = "Neplatny key.",
        ['keybinds'] = "???? zkratky",
        ['keybindsinfo'] = "Pouzit",
        -- added
      ['nocommand'] = "No such command to unbind",
      ['alreadyexist'] = "This command already exists",
      ['invalidargs'] = "Invalid command arguments",
      ['binds'] = "Binds",
      ['nobinds'] = "You have no saved binds",
      ['command'] = "Command",
  },
  ['fr'] = {
        ['emotes'] = 'Emotes',
        ['danceemotes'] = "???? Emotes de danse",
        ['propemotes'] = "???? Em Prop Emotes",
        ['favoriteemotes'] = "???? Favori",
        ['favoriteinfo'] = "D??finir un emote comme favori.",
        ['rfavorite'] = "r??initialiser le favori.",
        ['prop2info'] = "??? Prop Emotes peuvent ??tre situ??s ?? la fin",
        ['set'] = "Set (",
        ['setboundemote'] = ") pour ??tre votre emote li???",
        ['newsetemote'] = "~w~ est maintenant votre emote li??e, appuyez sur ~g~CapsLock~w~ pour l'utiliser.",
        ['cancelemote'] = "Annuler Emote",
        ['cancelemoteinfo'] = "~r~X~w~ Annule l'emote en cours de lecture",
        ['walkingstyles'] = "Styles de marche",
        ['resetdef'] = "R??initialiser aux valeurs par d??faut",
        ['normalreset'] = "Normal (r??initialiser)",
        ['moods'] = "Humeurs",
        ['infoupdate'] = "Information",
        ['infoupdateav'] = "Information (Mise ?? jour disponible)",
        ['infoupdateavtext'] = "Une mise ?? jour est disponible ~y~https://github.com/andristum/dpemotes~w~",
        ['suggestions'] = "Suggestions?",
        ['suggestionsinfo'] = "'dullpear_dev' sur les forums FiveM pour toutes les suggestions de fonction / emote! ??????",
		['notvaliddance'] = "n'est pas une danse valide",
        ['notvalidemote'] = "n'est pas un emote valide",
        ['nocancel'] = "Pas d'emote ?? annuler",
        ['maleonly'] = "Cet emote est r??serv?? aux hommes, d??sol??!",
        ['emotemenucmd'] = "Do /emotemenu pour un menu",
        ['shareemotes'] = "???? Em Emotes partag??es",
        ['shareemotesinfo'] = "Inviter une personne proche ?? emoter",
        ['sharedanceemotes'] = "???? Dances partag??es",
        ['notvalidsharedemote'] = "n'est pas un emote partag?? valide.",
        ['sentrequestto'] = "Demande envoy??e ?? ~g~",
        ['nobodyclose'] = "Personne assez proche.",
        ['doyouwanna'] = "~y~Y~w~ accepter, ~r~L~w~ refuser (~g~",
        ['refuseemote'] = "Emote refus??e.",
        ['makenearby'] = "fait jouer le joueur ?? proximit??",
        ['camera'] = "Presse ~y~G~w~ utiliser le flash de l'appareil.",
        ['makeitrain'] = "Presse ~y~G~w~ jeter de l'argent.",
        ['pee'] = "Tenir ~y~G~w~ faire pipi.",
        ['spraychamp'] = "Tenir ~y~G~w~ vaporiser du champagne.",
        ['bound'] = "Li??e ",
        ['to'] = "??",
        ['currentlyboundemotes'] = " Emotes actuellement li??s:",
        ['notvalidkey'] = "n'est pas une cl?? valide.",
        ['keybinds'] = "???? Liens Cl??s",
        ['keybindsinfo'] = "Use",
        -- added
        ['nocommand'] = "No such command to unbind",
        ['alreadyexist'] = "This command already exists",
        ['invalidargs'] = "Invalid command arguments",
        ['binds'] = "Binds",
        ['nobinds'] = "You have no saved binds",
        ['command'] = "Command",
  },
  ['de'] = {
        ['emotes'] = 'Emotes',
        ['danceemotes'] = "???? Tanz-Emotes",
        ['propemotes'] = "???? Prop-Emotes",
        ['favoriteemotes'] = "???? Favorit",
        ['favoriteinfo'] = "W??hlen Sie hier ein Emote aus, um es als gebundenes Emote festzulegen.",
        ['rfavorite'] = "Keybind zur??cksetzen",
        ['prop2info'] = "??? Prop-Emotes k??nnen am Ende platziert werden",
        ['set'] = "Set (",
        ['setboundemote'] = ") soll dein gebundenes Emote sein?",
        ['newsetemote'] = "~w~ ist jetzt dein gebundenes Emote, dr??cke ~g~CapsLock~w~, um es zu verwenden.",
        ['cancelemote'] = "Emote abbrechen",
        ['cancelemoteinfo'] = "~r~ X ~w~ Bricht das aktuell wiedergegebene Emote ab",
        ['walkingstyles'] = "Gehstile",
        ['resetdef'] = "Auf Standard zur??cksetzen",
        ['normalreset'] = "Normal (Zur??cksetzen)",
        ['moods'] = "Stimmungen",
        ['infoupdate'] = "Information",
        ['infoupdateav'] = "Information (Update verf??gbar)",
        ['infoupdateavtext'] = "Eine Aktualisierung ist verf??gbar ~y~https://github.com/andristum/dpemotes~w~",
        ['suggestions'] = "Vorschl??ge?",
        ['suggestionsinfo'] = "'dullpear_dev' in FiveM-Foren f??r alle Feature- / Emote-Vorschl??ge! ??????",
        ['notvaliddance'] = "ist kein g??ltiger Tanz",
        ['notvalidemote'] = "ist kein g??ltiges Emote",
        ['nocancel'] = "Kein Emote zum Abbrechen",
        ['maleonly'] = "Dieses Emote ist nur m??nnlich, sorry!",
        ['emotemenucmd'] = "Do /emotemenu f??r ein Men??",
        ['shareemotes'] = "???? Geteilte Emotes",
        ['shareemotesinfo'] = "Laden Sie eine Person in Ihrer N??he zum Emoten ein",
        ['sharedanceemotes'] = "???? Geteilte T??nze",
        ['notvalidsharedemote'] = "ist kein g??ltiges geteiltes Emote.",
        ['sentrequestto'] = "Gesendete Anfrage an ~g~",
        ['nobodyclose'] = "Niemand ist nah genug dran.",
        ['doyouwanna'] = "~y~Y~w~ zu akzeptieren, ~r~L~w~ zu verweigern (~g~",
        ['refuseemote'] = "Emote abgelehnt.",
        ['makenearby'] = "L??sst den Spieler in der N??he spielen",
        ['camera'] = "Dr??cken ~y~G~w~ Kamerablitz verwenden.",
        ['makeitrain'] = "Dr??cken ~y~G~w~ Geld werfen.",
        ['pee'] = "Halt ~y~G~w~ urinieren.",
        ['spraychamp'] = "Halt ~y~G~w~ champagner spr??hen",
        ['bound'] = "Gebunden ",
        ['to'] = "zu",
        ['currentlyboundemotes'] = " Derzeit gebundene Emotes:",
        ['notvalidkey'] = "ist kein g??ltiger schl??ssel.",
        ['keybinds'] = "???? Tastenkombinationen",
        ['keybindsinfo'] = "verwenden",
        -- added
        ['nocommand'] = "No such command to unbind",
        ['alreadyexist'] = "This command already exists",
        ['invalidargs'] = "Invalid command arguments",
        ['binds'] = "Binds",
        ['nobinds'] = "You have no saved binds",
        ['command'] = "Command",
  },
  ['sv'] = {
        ['emotes'] = 'Emotes',
        ['danceemotes'] = "???? Dans Emotes",
        ['propemotes'] = "???? Objekt Emotes",
        ['favoriteemotes'] = "???? Favorit",
        ['favoriteinfo'] = "V??lj en emote h??r f??r att st??lla in den som din favorit emote.",
        ['rfavorite'] = "??terst??ll favorit.",
        ['prop2info'] = "??? Objekt Emotes finns l??ngst ner i listan.",
        ['set'] = "S??tt (",
        ['setboundemote'] = ") till din favorit emote?",
        ['newsetemote'] = "~w~ ??r nu din favorit emote, tryck ~g~CapsLock~w~ f??r att anv??nda den.",
        ['cancelemote'] = "Avbryt Emote",
        ['cancelemoteinfo'] = "~r~X~w~ Avbryter det emote som f??r n??rvarande anv??nds.",
        ['walkingstyles'] = "Walking Stil",
        ['resetdef'] = "??terst??ll till standard",
        ['normalreset'] = "Normal (??terst??ll)",
        ['moods'] = "Hum??r",
        ['infoupdate'] = "Information",
        ['infoupdateav'] = "Information (Uppdatering tillg??nglig)",
        ['infoupdateavtext'] = "En uppdatering ??r tillg??nglig ~y~https://github.com/andristum/dpemotes~w~",
        ['suggestions'] = "F??rslag?",
        ['suggestionsinfo'] = "'dullpear_dev' p?? FiveM-forum f??r alla funktioner/emote-f??rslag! ??????",
        ['notvaliddance'] = "??r inte en giltig dans",
        ['notvalidemote'] = "??r inte en giltig emote",
        ['nocancel'] = "Ingen emote att avbryta",
        ['maleonly'] = "Den h??r emoten ??r endast f??r m??n, ledsen!",
        ['emotemenucmd'] = "G??r /emotemenu f??r en meny",
        ['shareemotes'] = "???? Delade Emotes",
        ['shareemotesinfo'] = "Bjud in en n??gon n??ra f??r en emote",
        ['sharedanceemotes'] = "???? Delade Danser",
        ['notvalidsharedemote'] = "??r inte en giltig delad emote.",
        ['sentrequestto'] = "Skickad f??rfr??gan till ~g~",
        ['nobodyclose'] = "Ingen ~r~n??ra~w~ tillr??ckligt.",
        ['doyouwanna'] = "~y~Y~w~ f??r att acceptera, ~r~L~w~ f??r att v??gra (~g~",
        ['refuseemote'] = "Emote v??grades.",
        ['makenearby'] = "andra personen spelar",
        ['camera'] = "Tryck ~y~G~w~ f??r att anv??nda blixt.",
        ['makeitrain'] = "Tryck ~y~G~w~ f??r att kasta pengar.",
        ['pee'] = "H??ll ~y~G~w~ att kissa.",
        ['spraychamp'] = "H??ll ~y~G~w~ f??r att spraya champagne.",
        ['bound'] = "Bunde ",
        ['to'] = "till",
        ['currentlyboundemotes'] = " F??r n??rvarande bundna emotes:",
        ['notvalidkey'] = "??r inte en giltig tangent.",
        ['keybinds'] = "???? Keybinds",
        ['keybindsinfo'] = "Anv??nd",
        -- added
        ['nocommand'] = "No such command to unbind",
        ['alreadyexist'] = "This command already exists",
        ['invalidargs'] = "Invalid command arguments",
        ['binds'] = "Binds",
        ['nobinds'] = "You have no saved binds",
        ['command'] = "Command",
  },
  ['es'] = {
        ['emotes'] = "Animaciones",
        ['danceemotes'] = "???? Bailes",
        ['propemotes'] = "???? Objetos",
        ['keybindemotes'] = "???? Favorita",
        ['keybindinfo'] = "Selecciona una animacion como su favorita.",
        ['rkeybind'] = "Reiniciar favorito",
        ['prop2info'] = "??? Animaciones de objetos al final.",
        ['set'] = "Elegir (",
        ['setboundemote'] = ") como tu animacion favorita?",
        ['newsetemote'] = "~w~ es ahora tu animacion favorita, presiona ~g~[CapsLock]~w~ para usarla.",
        ['cancelemote'] = "Cancelar animacion",
        ['cancelemoteinfo'] = "~r~X~w~ Cancela la animacion actual.",
        ['walkingstyles'] = "Formas de caminar",
        ['resetdef'] = "Reiniciar a por defecto",
        ['normalreset'] = "Normal (Reiniciar)",
        ['moods'] = "Estados de animo",
        ['infoupdate'] = "Informacion",
        ['infoupdateav'] = "Informacion (Actualizacion disponible)",
        ['infoupdateavtext'] = "Una actualizacion esta disponible, para conseguir la ultima version ingresa a ~y~https://github.com/andristum/dpemotes~w~",
        ['suggestions'] = "Sugerencias?",
        ['suggestionsinfo'] = "dullpear_dev' en el foro de FiveM para cualquier sugerencia! ??????",
        ['notvaliddance'] = "no es un baile valido.",
        ['notvalidemote'] = "no es una animacion valida.",
        ['nocancel'] = "No hay animacion para cancelar.",
        ['maleonly'] = "Esta animacion es solo de hombre!",
        ['emotemenucmd'] = "Escribe /emotemenu para abrir el menu.",
        ['shareemotes'] = "???? Animaciones compartidas",
        ['shareemotesinfo'] = "Invita a una persona cercana para la animacion.",
        ['sharedanceemotes'] = "???? Bailes compartidos",
        ['notvalidsharedemote'] = "no es una animacion compartida valida.",
        ['sentrequestto'] = "Solicitud enviada ~y~",
        ['nobodyclose'] = "Nadie ~r~cerca~w~.",
        ['doyouwanna'] = "~y~Y~w~ para aceptar, ~r~L~w~ para rechazar (~g~",
        ['refuseemote'] = "Animacion rechazada.",
        ['makenearby'] = "hacer que el jugador cercano juegue",
        ['camera'] = "Presione ~y~G~w~ para usar el flash de la camara.",
        ['makeitrain'] = "Presiona ~y~G~w~ para hacer llover.",
        ['pee'] = "Mantiene ~y~G~w~ para mear.",
        ['spraychamp'] = "Mantiene ~y~G~w~ rociar champ??n.",
        ['bound'] = "Unida ",
        ['to'] = "a",
        ['currentlyboundemotes'] = " Emotes vinculados actualmente:",
        ['notvalidkey'] = "no es una clave v??lida.",
        ['keybinds'] = "???? Keybinds",
        ['keybindsinfo'] = "Utilizar",
        -- added
        ['nocommand'] = "No such command to unbind",
        ['alreadyexist'] = "This command already exists",
        ['invalidargs'] = "Invalid command arguments",
        ['binds'] = "Binds",
        ['nobinds'] = "You have no saved binds",
        ['command'] = "Command",
  }
}
