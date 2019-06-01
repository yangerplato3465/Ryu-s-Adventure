///@arg x
///@arg y
///@arg Sprite

var xx = argument0;
var yy = argument1;
var sprite = argument2;

instance_create_layer(xx, yy, "System", oButtonToolTip);
oButtonToolTip. sprite_index = sprite;