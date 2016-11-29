# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements

- [x] Include a show resource rendered using jQuery and an Active Model Serialization JSON backend.
 -- my ingredient show page uses jQuery to show the recipes made with this ingredient, displaying their details using AMS JSON.

- [x] Include an index resource rendered using jQuery and an Active Model Serialization JSON backend.
  -- created my ingredient index page using jQuery and AMS JSON

- [x] Include at least one has_many relationship in information rendered via JSON and appended to the DOM.
 -- the ingredient show page displays the relationship of has_many recipes

- [x] Include at least one link that loads or updates a resource without reloading the page.
  -- my comment show page has a comment section that lets you add a new comment without a page refresh.

- [x] Translate JSON responses into js model objects.
  -- the ingredient show page has a Recipe JS model object made from the JSON response

- [x] At least one of the js model objects must have at least one method added by your code to the prototype.
  -- on the ingredient show page, my Recipe model has a prototype method listItems

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
