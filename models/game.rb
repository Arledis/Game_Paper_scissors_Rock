class Game

def initialize(rock, scissors, paper)
  @rock = rock
  @scissors = scissors
  @paper = paper
end


def rock_scissors(rock, scissors)
  return "Rock wins"
end

def scissors_paper
  return "Scissors wins"
end

def paper_rock
  return "Paper wins"
end


def rock_rock
  return "Try again"
end

def scissors_scissors
  return "Try again"
end

def paper_paper
  return "Try again"
end

end
