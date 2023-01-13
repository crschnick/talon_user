from talon import Module, actions, app, speech_system, Context
from talon_plugins import eye_mouse
from talon_plugins.eye_mouse import toggle_control, config

mod = Module()

scrolling = False
control_mouse_forced = False

@mod.action_class
class Actions:
    def toggle_scroll():
        """"abc"""
        global scrolling
        # enable 'control mouse' if eye tracker is present and not enabled already
        global control_mouse_forced

        if scrolling:
            if control_mouse_forced:
                toggle_control(True)
                control_mouse_forced = False
            actions.mouse_click(2)
            scrolling = False
        else:
            if eye_mouse.tracker is not None and config.control_mouse:
                toggle_control(False)
                control_mouse_forced = True
            scrolling = True
            actions.mouse_click(2)

    def choose_option(index: int):
        """"abc"""
        for i in range(index - 1):
            actions.key("down")
        actions.key("enter")

