data {
  int Nobs;
  int yobs[Nobs];
}
parameters {
  real<lower = 0> lam;
}
model {
  lam ~ normal(0,6);
  yobs ~ poisson(lam);
}
generated quantities {
  int ypred[Nobs];
  
  for(n in 1:Nobs){
    ypred[n] = poisson_rng(lam);
  }
}
