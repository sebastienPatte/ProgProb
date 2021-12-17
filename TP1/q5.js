var q5 = function(){
	var coin = sample(Uniform({a:0,b:1}))
	var answer = function(){
		var fumeur = sample(Bernoulli({p:coin}))
		var piece = sample(Bernoulli({p:.5}))
		var x = piece ? true : fumeur
		return(x)
	}
	condition(sum(repeat(200,answer))==160)
	return coin
}

viz(Infer(q5))