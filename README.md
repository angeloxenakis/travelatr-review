# Welcome to Travelatr!

Travelatr is company with a singular vision: to enable people from all walks of life to write about their travels to spectacular destinations all over the globe in order to foster a sense of global community and a heightened cultural awareness.

Our founder - a world renowned ice-cream-eating contest champion, gourmet hot-dog connoisseur, and bespoke phone case designer - has hired a diverse pool of talent to execute this vision, a pool that begins and ends with you!

## Instructions

Our vision has already begun! We've created migrations and a seed file for you to begin the execution of our vision! Create the associations within your models, then run `rake db:setup`!

## Deliverables

We envision a relationship between our models as follows:

Blogger -< Post >- Destination


For each model, we have a specific vision in mind:

Blogger:

1. Users should be able to create a new blogger
 	- Bloggers should have unique names and ages above 0, and their bio should be over 30 characters long.
2. Users should be able to see the profile page of a blogger. On this page, a user should see:
	- The total likes on all of that blogger's posts
	- A link to that blogger's featured post (the post with the most likes)
	- **BONUS** A list of that user's top 5 most written about destinations (the destinations with the most posts)

Destination:

1. Users should be able to see a destination profile page. On this page, a user should see:
	- The most recent 5 posts written about this destination
	- A link to a featured post (this destination's post with the most likes)
	- The average age of all unique bloggers who have written about this destination.

Post:

1. Users should be able to create and edit a post
	- Users should be able to select a blogger from a dropdown menu
	- Users should be able to select a destination from a dropdown menu
	- A post should have a title
	- A post should have content longer than 100 characters
2. Users should be able to see a post's page with its title and content displayed. On this page, a user should see:
	- A link to the page of that post's author
	- A link to the page of that post's destination
	- A like button link that increases the like count for that post (should take the user to the same page)


## Review Learning Goals:
1. Get to ground zero: index & show for everything
2. Get aggregate methods in the model
3. Use form to create a blogger with validations
4. Use form to edit a post

## Important Notes
* Order or request response cycle: Route -> controller (follows the model's rules) -> view -> repeat

* The swing back and forth from the view to the controller:
	Create:
	1. `new` controller method sends you to the `new.erb` view with the form
	2. `new.erb` renders a form with a submit button that points to the `create` controller method
	3. `create` controller method redirects back to the `show` or `index` (depending on the deliverables)

	Edit:
	1. `edit` controller method sends you to the `edit.erb` view with the form
	2. `edit.erb` renders a form with a submit button that points to the `update` controller method
	3. `update` controller method redirects back to the `show` (depending on the deliverables)

* Validations will not make ore break the code challenge, but if you're going to use built in rails valdations in the model, then read your documentation

* Order or arguments in `collection_select` (in the context of `form_for`)
1. What is the key we are trying to set on the instance we are *creating*
2. The collection that we're ierating over
3. The attribute on the object we are *choosing* to assign
4. The attribute that we want to show to the user to choose from