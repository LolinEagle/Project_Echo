///@desc Draw Lightning
var _originX = floor(x);
var _originY = floor(y);
var _light = sprite_get_height(sLightning);
var _chain = (_originY / _light) + 1;
for(var i = 0; i < _chain; i++){
	draw_sprite(
		sLightning,
		0,
		_originX,
		_originY - ((_chain - i) * _light)
	);
}