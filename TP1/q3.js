var q3 = function () {
	var p1 = sample(Bernoulli({p:0.2}))
	var p2 = sample(Bernoulli({p:0.2}))
	condition((p1 & !p2)|(!p1 & p2))
	return p1;
}

viz(Infer(q3))
