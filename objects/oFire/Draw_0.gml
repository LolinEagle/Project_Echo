//Shader set
if(flash > 0){
	shader_set(flashShader);
	uFlash = shader_get_uniform(flashShader, "flash");
	shader_set_uniform_f(uFlash, flash);
}

//Draw the Entity
draw_self();

//Shader reset
if(shader_current() != -1){shader_reset();}