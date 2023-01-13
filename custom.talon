
find:
    key(ctrl-f)

find in files:
    key(ctrl-shift-f)

replace:
    key(ctrl-r)

alt <user.letter>:
	key("alt:down")
	sleep(20ms)
    key(letter)
    key("alt:up")
	sleep(20ms)

next:
    key(,)
    key(space)

end ten | end do:
    key(enter)


scroll:
    user.toggle_scroll()

ship <user.word>: user.insert_formatted(user.word, "hammer")

del:
  key(backspace)

double (delete | del):
  key(backspace)
  key(backspace)

triple (delete | del):
  key(backspace)
  key(backspace)
  key(backspace)

del right:
  key(delete)

double (delete | del) right:
  key(delete)
  key(delete)

triple (delete | del) right:
  key(delete)
  key(delete)
  key(delete)

surround (delete | del):
  key(delete)
  key(backspace)

for delete | four delete:
  key(delete)

bim:
  mouse_click(0)
  mouse_click(0)
  sleep(20ms)
  edit.copy()

dim:
  mouse_click(0)
  mouse_click(0)
  sleep(20ms)
  edit.paste()

lim:
  mouse_click(0)
  mouse_click(0)
  sleep(20ms)
  edit.cut()

insert first name:
    insert("Christopher")

insert last name:
    insert("Schnick")

insert full name:
    insert("Christopher Schnick")

insert email:
    insert("cschnick@t-online.de")

insert phone number:
    insert("15118145727")

insert street name:
    insert("Reichertshalde 81")

insert city name:
    insert("Ludwigsburg")

insert work email:
    insert("crschnick@xpipe.io")

insert state:
    insert("Baden-Württemberg")

format link:
    key(ctrl-x)
    insert("``_")
    key(left:2)
    key(ctrl-v)
    key(space)
    insert("<>")
    key(left)


insert link:
    insert("``_")
    key(left:2)
    key(space)
    insert("<")
    key(ctrl-v)
    insert(">")