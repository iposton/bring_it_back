<h1>Welcome To Bring It Back</h1>


[![Circle CI](https://circleci.com/gh/iposton/bring_it_back/tree/master.svg?style=svg)](https://circleci.com/gh/iposton/bring_it_back/tree/master)
<br>
![Codeclimate](https://d3s6mut3hikguw.cloudfront.net/github/iposton/bring_it_back/badges/gpa.svg)](https://codeclimate.com/github/iposton/bring_it_back)

<h3>Never miss out with ‘Bring It Back’</h3>

Life’s busy. Who can remember the movies you wanted to watch a couple months ago. Bring It Back is a reminder service that keeps track of movies you meant to see and save for later. The api allows you to bookmark movies as they come out, and schedule personalized email reminders so you watch when you want.

<h3>Software used in Bring It Back</h3>

Bring It Back runs on these technologies:

<ul>
  <li>Rails 4.1.7</li>
  <li>Ruby 2.1.3</li>
  <li>Angular.JS</li>
  <li>JQuery</li>
  <li>MongoDB</li>
  <li>Bootstrap 3.3.2</li>
  <li>Circle CI for continuous integration</li>
  <li>Heroku for deployment</li>
  <li>RSpec, Factory Girl, and Capybara for testing</li>
</ul>

<h3>Ruby Gems Installed in Bring It Back</h3>

Bring It Back uses the following Gems:

<ul>
  <li>mongoid(mongo)</li>
  <li>angularjs-rails</li>
  <li>angular-rails-templates</li>
  <li>better_errors (streamlined development)</li>
  <li>rails_12factor (heroku deployment)</li>
  <li>bootstrap-sass</li>
  <li>rspec-rails (testing)</li>
  <li>factory_girl_rails (testing)</li>
  <li>capybara (testing)</li>
  <li>did_you_mean (typos)</li>
</ul>

Run the following commands to use these gems

<ul>
  <li>To install to your machine, run</li>

      `gem install name_of_gem_to_install`

  <li>To include the gem into your app,</li>

        add each gem to your Gemfile, then
        run `bundle install`

</ul>
<h3>Databases in Bring It Back</h3>
<p>To set up the database in Bring It Back, please be sure to install Mongo to your local machine, and to include the mongoid gem in the app.</p>
In order to run the test suite, you'll need to rake the seed file with the following command:

<code>rake db:seed</code>

<h3>Deploy to Heroku</h3>
<p>To deploy this app live to Heroku I had to first sign up for an account at <a href="www.heroku.com">Heroku</a>, download the <a href="https://devcenter.heroku.com/articles/getting-started-with-ruby#set-up">Heroku Toolbelt</a>, and then follow these steps from the command line.</p>

<ol>
  <li>run <code>git init</code></li>
  <li>run <code>heroku login</code> (enter username and password) </li>
  <li>run <code>heroku create</code> (name-your-app) </li>
  <li>run <code>heroku addons:add mongolab</code> (only if using MongoDB) </li>
      <em>see bring_it_back/config/mongoid.yml lines 71-106 added for mongolab addon</em>
  <li>run <code>rake assets:precompile</code> (asset pipeline) </li>
  <li>run <code>git add -A</code> then run <code>git commit -m "changes"</li>
  <li>run <code>git push heroku master</code> (after changes commit to git) </li>
  <li>See it live <a href="https://bring-it-back.herokuapp.com/">Bring It Back</a> on Heroku!</li>
  <li></li>
</ol>


###Running the test suite in Bring It Back

Bring It Back uses RSpec, Factory Girl, and Capybara for testing. Tests are broken down into specific files in the app's `spec` directory. For example, to run all of the tests, run:

  bundle exec rspec spec/
  
To run only the user model tests, run:
  
  bundle exec rspec spec/models/user_spec.rb
  
###Thanks for checking out Bring It Back!

Feel free to ask questions or send pull requests. Or Go to <a href="https://bring-it-back.herokuapp.com/">Bring It Back</a> and set up a profile and add some new movies!  Donations can be made in hot-sauce packets.

