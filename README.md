# Rails Assessment

It's time to put our Rails know-how to the test. Today, we are asked to build an
application for keeping track of local pets and their owners!

## Learning Goals

- MVC
- REST
- Request/Response Cycle
- Form/Form Helpers
- ActiveRecord
- Validations

## Setup

Before you begin, fork and clone this repo, run `bundle install` and 
`rake db:migrate` to get started.

## The Domain

Your neighbors love pets, and you've been asked to help them better keep track
of all the pets in the neighborhood. Your neighbors want you to make a website
that will allow them to see the names of pets as well as their owners. To do
this, we need a way to keep track of all of the pets and owners.

Luckily, some work has already been completed. We have a model for pets and a
model for owners. Once the database is seeded, visiting `/pets` displays all of
the pets, and visiting `/owners` displays all of the owners. We just don't have
a way to associate pets with owners.

We have several different owners and each owner can have **more than one pet**.
Each pet, however, can only have **one owner**.

## Instructions / Deliverables

Read through the instructions to get a sense of the scope of this assessment,
and then tackle each step one by one.

1. Create the missing associations between the owner and pet models. You may
   have to alter the current schema to get your code working. If you've set up
   your relationships properly, you should be able to run `rake db:seed` without
   errors, and confirm in the console that the pets and owners have been created
   with the proper relations.

2. Create index and show pages for pets and owners and allow for the additional
   routes. Add the appropriate controller actions as you build the views based
   discussed in the next steps.

3. The pets index page should list all pets, with each pet's name linking to
   that pet's show page.

4. The pet show page should include the pet's name (eg. 'Harpo'), description
   (eg. 'Long-haired dachshund, gray and white'), and the pet's owner. The
   owner's name should link to the owner show page.

5. The owner show page should have the owner's name, address and all of their
   pets. Each pet should link to that pet's show page.

6. The owners index page should list all owners, each name linked to that
   owner's show page.

7. Visitors to the website should be able to create new pets using a form to
   input the pet's name and description

8. The form for creating a new pet should also allow each pet to be created with
   **only one of the existing owners**.

**Note:** Make sure no two pets have the same name

## BONUS TO BE COMPLETED IF EVERYTHING ELSE IS DONE

Add a filter to the **index** view of the pets. This will allow the visitor to
search for an existing owner and display all the pets with that owner on the
same view page.

### Hints / Tips

- Draw your domain model and associations before you begin. You may have to
  alter the current schema to get your code working.
- A child model cannot be persisted without being associated with its parent model.
- More than one pet can have the same owner.
- More than one pet can have the same owner.
- More than one pet can have the same owner.
- We want to be RESTful. What URL should show info about a particular pet? What URL should show a form to create a pet? What controller actions are associated?
- If you're having a hard time implementing the filter, take a look at this http://guides.rubyonrails.org/form_helpers.html#a-generic-search-form. We are asking an input field to search for owners.
