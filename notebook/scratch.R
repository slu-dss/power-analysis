# alpha
# Type I Error
# incorrectly rejecting
# correct null
mean(replicate(10000, {
  t.test(rnorm(10, 70, 4), mu = 70)$p.value < 0.05
}))

# beta
# Type II Error
# incorrectly retaining
# incorrect null
mean(replicate(10000, {
  t.test(rnorm(10, 70, 4), mu = 66)$p.value > 0.05
}))

power.t.test(n = 10,  
             delta = NULL, 
             sig.level = 0.05, 
             power = 0.80, 
             type = "one.sample")


mean(replicate(10000, {
  t.test(rnorm(10, 70, 4), rnorm(10, 70, 4))$p.value < 0.05
}))

mean(replicate(10000, {
  t.test(rnorm(10, 70, 4), rnorm(10, 64.7, 4))$p.value > 0.05
}))

power.t.test(n = 10,  
             delta = NULL, 
             sd = 4, 
             sig.level = 0.05, 
             power = 0.80, 
             type = "two.sample")
