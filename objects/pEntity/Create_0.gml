z = 0;
flash = 0;
lifted = 0;
thrown = false;
localFrame = 0;
animationEnd = false;

//Shader
flashShader = shWhiteFlash;
uFlash = shader_get_uniform(flashShader, "flash");

//Get New Tilemap
collisionMap = layer_tilemap_get_id(layer_get_id("tsCol"));