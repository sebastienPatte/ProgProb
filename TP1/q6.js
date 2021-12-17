var model = function(){
  var p = sample(Uniform({a:0, b:1}))
  var answers = repeat(200,function(){
    var smoke = sample(Bernoulli( {p:p}));
    var coin = sample(Bernoulli( {p:0.5}));
    return coin ? true : smoke
  })
  // Compute proportion of Yes
  var YP = sum(answers)/200
  // Score with respect to a binomial of bias YP
  // compared with data
  observe(Binomial({n:200, p:YP}),160)
  return p
}
// Infer with Importance Sampling 
viz(Infer({method: 'SMC', particles:2000, model:model}))