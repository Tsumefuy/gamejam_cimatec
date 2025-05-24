function acceleration(spd1, spd2, acc){
	if (spd1 < spd2)
	{
		spd1 += acc;
		if (spd1 > spd2) {
			return spd2;
		}
	} else {
		spd1 -= acc;
		if (spd1 < spd2) {
			return spd2;
		}
	}
	return spd1;
}