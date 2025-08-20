//Game
#macro VERSION "v 0.1.0"
#macro FPS 60
#macro TILE_SIZE 32
#macro CARDINAL_DIR round(direction / 90)

//Resolution
#macro RES_W 960
#macro RES_H 540
#macro RES_W_HALF 480
#macro RES_H_HALF 270

//Bind
#macro KEY_USE keyboard_check_pressed(ord("E"))
#macro KEY_RELOAD keyboard_check_pressed(ord("R"))
#macro KEY_ITEM keyboard_check_pressed(ord("F"))
#macro KEY_ITEM_SELECT keyboard_check_pressed(ord("A"))
#macro KEY_ATTACK_PRESSED mouse_check_button_pressed(mb_left)
#macro KEY_ATTACK mouse_check_button(mb_left)
#macro KEY_MOUSE_UP mouse_wheel_up()
#macro KEY_MOUSE_DOWN mouse_wheel_down()
#macro KEY_PRIMARY_1 keyboard_check_pressed(ord("1"))
#macro KEY_PRIMARY_2 keyboard_check_pressed(ord("2"))
#macro KEY_SECOND keyboard_check_pressed(ord("3"))

//Transition
#macro TRANSITION_SPEED 0.03
#macro OUT 0
#macro IN 1