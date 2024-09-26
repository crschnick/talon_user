
take <number_small>:
    edit.line_start()
    key("ctrl-right:{number_small}")
    key("ctrl-left")
    key("ctrl-shift-right")

chuck <number_small>:
    edit.line_start()
    key("ctrl-right:{number_small}")
    key("ctrl-left")
    key("ctrl-shift-right")
    key(delete)

carve <number_small>:
    edit.line_start()
    key("ctrl-right:{number_small}")
    key("ctrl-left")
    key("ctrl-shift-right")
    key("ctrl-x")

copy <number_small>:
    edit.line_start()
    key("ctrl-right:{number_small}")
    key("ctrl-left")
    key("ctrl-shift-right")
    key("ctrl-c")


replace <number_small>:
    edit.line_start()
    key("ctrl-right:{number_small}")
    key("ctrl-left")
    key("ctrl-shift-right")
    key("ctrl-c")

pre <number_small>:
    edit.line_start()
    key("ctrl-right:{number_small}")
    key("ctrl-left")
    edit.line_start()
    key("ctrl-right:{number_small}")
    key("ctrl-left")

post <number_small>:
    edit.line_start()
    key("ctrl-right:{number_small}")
    key("ctrl-left")
    key("ctrl-right")

tail <number_small>:
    edit.line_end()
    key("ctrl-left:{number_small}")

head <number_small>:
    edit.line_start()
    key("ctrl-right:{number_small}")