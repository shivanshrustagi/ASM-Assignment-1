
set.seed(1)
repeats <- 100000
win.no.switch <- numeric(length = repeats) # saves 0 or 1 based on winning no switch
win.switch <- numeric(length = repeats)   # saves 0 or 1 based on winning switch

for(r in 1:repeats) 
{
  
  doors <- 1:3    # three doors
  prize <- sample(1:3, 1)  # randomly select the door which has the prize
  
  # CHoosing the door
  chosen.door <- sample(1:3, 1)   # choose a door
  
  # reveal a door that is not the chosen door and not the door with a prize in it
  which.reveal <- rep((1:3)[-c(prize, chosen.door)], 2) 
  reveal <- sample(which.reveal, size = 1) # randomly choose which door to reveal
  
  win.no.switch[r] <- chosen.door == prize  
  
  chosen.door <- (1:3)[-c(reveal, chosen.door)] #change door
  win.switch[r] <- chosen.door == prize 
}


# results
mean(win.no.switch) #Probab of winning if you don't switch
mean(win.switch) # Probab of winning if you switch

