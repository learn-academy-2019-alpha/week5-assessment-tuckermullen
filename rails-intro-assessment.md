# Week 5 Assessment

Try your best to answer each question on your own before looking up the answer online. Once you're done writing your first answer, you can google the question and write the best answer you find.

### 1. What are some advantages of using Ruby on Rails?

The advantages of using Ruby on Rails is having a language that pairs with a powerful framework. Rails can accept changes very quickly and Ruby allows for in-depth testing through RSpec.

### 2. How does Ruby on Rails use the Model View Controller (MVC) framework?

Ruby on Rails uses the MVC framework by rendering the site/app through views, controlling the actions of your site/app through the controllers, and handling your data through models. All of them communicate with each other making Ruby on Rails nice to use when building web apps.

### 3. Using the information given, complete the steps for creating a new view in a rails app by filling in the blanks:

  1. Create a route:

  code:
  ```
  get '/about' => 'statics#about'
  ```
  file: config/routes

  2. Create the __CONTROLLER__

  code:
  ```
  class __StaticsController__ < ApplicationController

  def about
    __render 'about.html.erb'__
  end
  ```

  file: __statics_controller.rb__

  3. Create the View

  code:

  ```
  <div>This is the About page!</div>
  ```

  file: __about.html.erb__


### 4. Look at these sets of Rails routes, they are an example of which principle/term that we touched on briefly in class? Find the term, and explain why it is important.

```
/users/       method="GET"     # :controller => 'users', :action => 'index'
/users/1      method="GET"     # :controller => 'users', :action => 'show'
/users/new    method="GET"     # :controller => 'users', :action => 'new'
/users/       method="POST"    # :controller => 'users', :action => 'create'
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
```

I think this is pertaining to CRUD (create, read, update, delete).

### 5. What is the public folder used for in Rails?

The public folder is used to contain the public files such as error pages (ex: 404), favicon, etc.

### 6. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

`get '/game' => 'main/#guess'`

### 7. What are cookies for? How do they work? What is the difference between a session and a cookie?

Cookies are for storing data for the site/app. That data will save even if the user leaves the current site/app and returns at a later date. A session stores data up until the session ends while a cookie stores the data for good until it expires or is reset.

### 8. In an html form, what does the "action" attribute tell you about the form?  How do you designate the HTTP verb for the form?

The "action" attribute tells you the URL ending that is the form is working on. So if the current value of "action" was set to `action='game'`, the url locally would be `localhost:3000/game`. The designation for an HTTP verb on a form would be `method='verb'`. I believe this is used to connect your controller's method to your form.

### 9. Why would you use an instance variable in a rails controller?

You would use an instance variable in a rails controller to allow the value of that instance variable (class variable) to be available in other files within the application. It also makes your code easier to read/follow if you use good naming conventions.

### 10. Name two rails generator commands and what files they create:

rails g controller Posts (Creates a controller file, the view for the controller, a test file, a helper file, a stylesheet, and a javascript file.)

### 11. There is a table called "squirrels". What SQL code would we write to print everything in the table?

`SELECT * FROM squirrels;`

### 12. What is a foreign key? Where would you use it in a has many/belongs to relationship?
[Your Answer]

I think a foreign key is a collection of random characters that are assigned to a piece of data that allows that data to be unique. I think a good example of its usage would be when your app accepts users to create accounts. Their email address or username would be assigned a foreign key to ensure that another account can not be created with the same email address or username.

[Googled Answer]

A FOREIGN KEY is a key used to link two tables together.

A FOREIGN KEY is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table.

The table containing the foreign key is called the child table, and the table containing the candidate key is called the referenced or parent table.

### 13. Rails has a great community and lots of free tutorials to help you learn. Here is a list of some tutorials to choose from, choose one, do it, and then report back here at least one thing you learned. You can also use a different resource if you find one that you like better.

- https://www.tutorialspoint.com/ruby-on-rails/index.htm
- http://railsforzombies.org
- http://guides.rubyonrails.org/getting_started.html

I learned that when generating controllers through the terminal, the controller name should always be plural. When generating models through the terminal, your model name should always be capitalized. Upon creating your model, you should run `rake db:migrate` to migrate your database.
