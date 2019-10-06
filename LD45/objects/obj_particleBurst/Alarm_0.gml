if(type ==1)
	num = 10
else
	num = 15

for(i = 0; i<num; i++)
{
	particle = instance_create_layer(x, y, "Shield", obj_particle)
	particle.direction = irandom_range(generalDir-dirVariation,generalDir+dirVariation)
	particle.speed = random_range(minSpeed, maxSpeed)
	particle.image_xscale = random_range(minSize, maxSize)
	particle.image_yscale = particle.image_xscale
	
	particle.life = irandom_range(minLife, maxLife)
	
	if(type==1)
	{
		particle.image_index = irandom(2)
		particle.image_angle = particle.direction
	}
	else
	{
		particle.image_index = 3
	}
	
	if particle.image_index!=0
		particle.speed/= 2
		particle.life*=2
}

instance_destroy()