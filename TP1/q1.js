var q1 = function (){
	var d1 = 1+sample(RandomInteger({n:6}))
	var d2 = 1+sample(RandomInteger({n:6}))
	condition(d1-d2==1)
	return d1+d2;
}
viz (Infer (q1))