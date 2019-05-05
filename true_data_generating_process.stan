transformed data {
  real lam = 4;
  int Nobs = 1000;
}
generated quantities {
  real y[Nobs];

  for(n in 1:Nobs){
    y[n] = poisson_rng(lam);
  }
}
