var model = function ( ) {
	var x = sample ( Uniform ({ a : 0 , b : 1 } ) )
	return ( x<=0.1)
}

var mod = Infer(model)
viz(mod)