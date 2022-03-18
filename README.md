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
        1. game over - win / lose  
        2. incorrect letter   
        3. correct letter  
- View game  
    - Game  
- Create new word  

###Useful testing links:

- Html matchers for rspec: https://github.com/kucaahbe/rspec-html-matchers

- General rspec matchers: https://relishapp.com/rspec/rspec-expectations/v/3-10/docs/built-in-matchers/end-with-matcher

- Alias Matchers for rspec: https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86

### Database / heroku stuff

Followed instructions in this article: http://agdavid.github.io/2016/05/05/10_steps_to_heroku_letting_your_sinatra_app_sing_in_sqlite3_and_postgresql/

Note that when I ran this command - `heroku addons:create heroku-postgresql:hobby-dev` - I got this back on command line: `Created postgresql-vertical-56276 as HEROKU_POSTGRESQL_CYAN_URL`
