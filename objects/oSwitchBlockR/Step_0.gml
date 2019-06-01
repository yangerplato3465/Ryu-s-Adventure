if(state == -1){
	image_index = 1;     //off
	mask_index = sEmpty;
}else if(state == 1){
	image_index = 0;      //on
	mask_index = sBlock;
}
