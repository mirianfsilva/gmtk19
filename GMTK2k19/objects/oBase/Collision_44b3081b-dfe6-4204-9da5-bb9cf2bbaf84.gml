/// @description Insert description here
// You can write your code in this editor
instance_destroy(self);

instance_create_depth(other.x, other.y, -1, oSpiked);
instance_destroy(other);

if(CountCharacters() == 0)
	show_debug_message("DERROTA: ENCERRAR A CENA");