clock = 0;
iFire = 0;
collisionHistory = ds_list_create();

//Shader
flash = 0;
flashShader = shRedFlash;
uFlash = shader_get_uniform(flashShader, "flash");

depth = 0