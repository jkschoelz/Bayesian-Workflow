data{
  int Nobs;
}
generated quantities {
  // Model configuration
  real<lower = 0> lam = fabs(normal_rng(0,6));
  
  // Simulate Data from observational model
  int y[Nobs];
  for(n in 1:Nobs){
    y[n] = poisson_rng(lam);
  }
  
}
