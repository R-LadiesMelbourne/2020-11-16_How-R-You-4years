talk_names <- c("Koo", "Anna", "Song", "Sehrish", "Shazia", "Zeinab", "Emi", "Alice", "Dianne")

set.seed(200)
sample_speaker <- sample(x = talk_names, size = 6, replace = FALSE)
sample_speaker

# Sample winners
talk_names <- c("Koo", "Song", "Sehrish", "Shazia", "Adele", "Emi", "Alice", "Dianne")
sample_winner <- sample(x = talk_names, size = 1)

