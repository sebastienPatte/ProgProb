var q4 = function(){
	var fumeur = sample(Bernoulli({p:.6}))
	var piece = sample(Bernoulli({p:.5}))
	var x = piece ? true : fumeur
	return(x)
}

viz(Infer(q4))