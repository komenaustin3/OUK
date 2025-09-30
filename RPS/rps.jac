import random;

walker RPS{
    has player_move: str;
    can start with `root entry;
    can play with round entry;
}

node round {
    has computer_move: str = random.choice(["Rock", "Paper", "Scissors"]);
}

with entry: __main__{
    root spawn RPS("Rock");
}