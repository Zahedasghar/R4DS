# 1. Create a set of 250 million entries, where 88\% of
# them are "support" and 12\% are "not".
pop_size <- 250000000
possible_entries <- c(rep("support", 0.88 * pop_size),
                      rep("not", 0.12 * pop_size))
str(possible_entries)
# 2. Sample 1000 entries without replacement.
sampled_entries <- sample(possible_entries, size = 1000)
# 3. Compute p-hat: count the number that are "support",
# then divide by # the sample size.
sum(sampled_entries == "support") / 1000

sample_means100 <- rep(0, 5000)

for(i in 1:5000){
  samp <- sample(possible_entries, size=50)
  sample_means100[i] <- sum(samp=="support")/100
}

hist(sample_means100,breaks = 25)
