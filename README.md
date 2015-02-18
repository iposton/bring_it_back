<h1>Welcome To Bring It Back</h1>


[![Circle CI](https://circleci.com/gh/iposton/bring_it_back/tree/master.svg?style=svg)](https://circleci.com/gh/iposton/bring_it_back/tree/master)

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

<h3>Ruby Gems Installed in Brint It Back</h3>

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
</ul>

Run the following commands to use these gems

<ul>
  <li>To install to your machine, run</li>
  <code>gem install name_of_gem_to_install</code>
  <li>To include the gem into your app,</li>
  <li>add each gem to your Gemfile, then</li>
  <li>run bundle install</li>
</ul>
<h3>Databases in Bring It Back</h3>
<p>To set up the database in Bring It Back, please be sure to install Mongo to your local machine, and to include the mongoid gem in the app.</p>
In order to run the test suite, you'll need to rake the seed file with the following command:

<code>rake db:seed</code>

