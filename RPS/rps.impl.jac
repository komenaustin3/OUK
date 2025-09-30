impl RPS.start {
    if not [root --> (`?round)]{
        next = root ++> round(random.choice(["Rock", "Paper", "Scissors"]));
    }else{
        next = [root --> (`?round)];
    }
    visit next;

}

impl RPS.play {
    if self.player_move == here.computer_move{
        print("It's a tie both chose " + self.player_move + "!");
        disengage;
    }elif(self.player_move == "Rock" and here.computer_move == "Scissors")or
        (self.player_move == "Paper" and here.computer_move == "Rock")or
        (self.player_move == "Scissors" and here.computer_move == "Paper"){
            print("You win " + self.player_move + " beats  " + here.computer_move + "!");
            disengage;
        }else{
            print("You lose " + here.computer_move + " beats " + self.player_move + "!");
            disengage;
        }
}