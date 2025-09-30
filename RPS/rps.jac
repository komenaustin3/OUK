import random;


walker RPS {
    has player_move: str;
    has human_score: int = 0;
    has computer_score: int = 0;
    has round_num: int = 1;
    has max_rounds: int = 3;

    can start with `root entry;
    can play with round entry;
}


node round {
    has computer_move: str = random.choice(["Rock", "Paper", "Scissors"]);
}


with entry:__main__ {
    choice = input("Enter rock, paper or scissors: ");
    root spawn RPS(choice);
}
