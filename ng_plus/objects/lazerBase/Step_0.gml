switch state{
	case closed:
		if lazerSpawn == 0{
			with (instance_create_layer(x,y,"Entities",lazer)){
				owner = other.id
				owner.lazerSpawn = id
			}
		}
		break;
		
	case open:
		state = top
		break;
		
	case top:
		if (lazerSpawn != 0){
			instance_destroy(lazerSpawn)
			lazerSpawn = 0;
		}
		break;
		
	case bottom:
		state = closed
		break;
}