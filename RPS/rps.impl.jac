impl RPS.start {
    if not [root --> (`?round)]{
        self.player_move = input("Enter rock, paper or scissors: ");
        next = root ++> round(random.choice(["Rock", "Paper", "Scissors"]));
        self.round_num + 1;
    }else{
        next = [root --> (`?round)];
    }
    visit next;

}

impl RPS.play {
    print("Round " + str(self.round_num) + ": you -> " + self.player_move + ", computer -> " + here.computer_move);
    if self.player_move == here.computer_move{
        print("It's a tie both chose " + self.player_move + "!");
        disengage;
    }elif(self.player_move == "Rock" and here.computer_move == "Scissors")or
        (self.player_move == "Paper" and here.computer_move == "Rock")or
        (self.player_move == "Scissors" and here.computer_move == "Paper"){
            print("Result: You win this round ");
            self.human_score = self.human_score + 1;
            }else{
            print("Resut: computer wins this round ");
            self.computer_score = self.computer_score + 1;
            }
    
    if self.round_num < self.max_rounds {
        self.round_num = self.round_num + 1;
        self.player_move = input("Enter rock, paper or scissors: ");
        next = root ++> round(random.choice(["Rock", "Paper", "Scissors"]));
        visit next;
    }else{
        print("Final score: you " + str(self.human_score) + " - computer " + str(self.computer_score));
        if self.human_score > self.computer_score{
            print("You win the match!");
        }elif self.human_score < self.computer_score{
            print("Computer wins the match!");
        }else{
            print("It's a tie!");
        }
        disengage;
        }
    
}