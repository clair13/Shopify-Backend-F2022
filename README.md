# Inventory Tracking App

Ruby: 3.0.2
Rails: 7.0.3

:one: Fork and clone this repo <br>
 :two: Install gems locally via <b>bundle install</b> from Commanf Line <br>
 :three: Reset database via <b>rails db:{create,migrate} </b> from Command Line <br>
 :four: Start server via <b>rails s </b> from Command Line <br>
 :five: Run  <b>bin/rspec </b> from Commmand Line to run the entire test suite <br>
 
 
 Information about the app: I tried for the first time to  deploy the app in Replit but I didn't manage to make it work.I tried then to deploy 
 it to Heroku and after some tweaks you can see it live here: https://evening-brushlands-03480.herokuapp.com/
 
I didn't have more time to create more tests unfortunately.I chose the 2nd task .
In the app you have all the CRUD actions for Item and Location.
Item belongs to a Location but Location has many Items.You can see all the items of each Location in the show action of the Locations page.
Also you can destroy a location but the items will not be destroyed and will just not be assigned to a Location.This have been achieved with dependent nullify.
