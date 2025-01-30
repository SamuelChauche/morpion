<!-- # morpion in Ruby

This is a simple Tic-Tac-Toe game implemented in Ruby. The game allows two human players to play against each other.

## Project Structure
your_project/
│
├── lib/
│   ├── app/
│   │   ├── board.rb
│   │   ├── player.rb
│   │   └── game.rb
│
└── app.rb

## Getting Started

### Prerequisites

Make sure you have Ruby installed on your machine. You can download it from [ruby-lang.org](https://www.ruby-lang.org/).

### Installation

1. Clone the repository:

```sh
git clone https://github.com/your_username/your_project.git
cd your_project

Run the game:

ruby app.rb

Project Files
lib/app/board.rb
Contains the Board class, which manages the game board, displays the board, handles moves, checks for winners, and checks if the board is full.

lib/app/player.rb
Contains the Player class, which manages player information, including their symbol ('X' or 'O') and name. It also handles player moves.

lib/app/game.rb
Contains the Game class, which manages the game flow, alternates turns between players, and checks for win or tie conditions.

app.rb
The entry point of the application. It requires the necessary files and starts the game by creating an instance of the Game class. -->