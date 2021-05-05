To get the website up, run `bundle install` and then `rackup -p 4567` on the command line in the root folder for this project. Then visit http://127.0.0.1:4567/ in the browser.

To run tests, run `bundle install` and then `rspec` on the command line in the root folder for this project.

[] domain 
    - Game
        - word
        - player
        - lives
    - Word
        - word
        - teaser
    - Player

[] Use cases
    - New game
        - Player and word needed for new game
    - Guess letter 
        - Player, game and letter 
        - output state: 
            1. game over
                - win / lose
            2. incorrect letter
            3. correct letter 
    - View game
        - Game
    - Create new word
