# power-analysis Instructor Guide

# answer key for notebook

library(here)



cohens_d <- (6.37 - 5.60) / 2.57

pwr::pwr.t.test(n = 293,
                d = cohens_d,
                sig.level = 0.05,
                power = NULL,
                type = "one.sample",
                alternative = "greater")
				
pwr::pwr.t.test(n = NULL,
                d = cohens_d,
                sig.level = 0.05,
                power = 0.80,
                type = "one.sample",
                alternative = "greater")
				

				
pooled_sd <- sd_pooled(sd1 = 82.81, n1 = 11, sd2 = 61.42, n2 = 9)

cohens_d <- (190.63 - 83.28) / pooled_sd

pwr::pwr.t2n.test(n1 = 11,
                  n2 = 9,
                  d = cohens_d,
                  sig.level = 0.05,
                  power = NULL,
                  alternative = "two.sided")
				  
pwr::pwr.t.test(n = NULL,
                d = cohens_d,
                sig.level = 0.05,
                power = 0.80,
                type = "two.sample",
                alternative = "two.sided")
				
				
								
pain.csv <- read_csv(here("data", "pain.csv"))

pain.csv$difference <- pain.csv$vibr - pain.csv$ctrl
(n <- length(pain.csv$difference))
(m_diffs <- mean(pain.csv$difference))
(s_diffs <- sd(pain.csv$difference))
(cohens_dz <- m_diffs / s_diffs)

pwr::pwr.t.test(n = n,
                d = cohens_dz,
                sig.level = 0.05,
                power = NULL,
                type = "paired",
                alternative = "less")
				
pwr::pwr.t.test(n = NULL,
                d = cohens_dz,
                sig.level = 0.05,
                power = 0.80,
                type = "paired",
                alternative = "less")
