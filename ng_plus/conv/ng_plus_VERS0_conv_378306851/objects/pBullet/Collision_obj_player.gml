if obj_player.state != PLAYERSTATE.DASH{
obj_player.currentHp -= 1;
instance_destroy();
}