1. Adding validation errors
  Validations with form_for
  In ruby documentation (can copy and paste)
  use local variables if using on multiple objects
  Syntax for rendering a partial in Rails - render goes on the html.erb file
  <%= render 'layouts/errors', locals: {object: @user} %>  where object is the variable used in the partial

  2. Add custom validation to throw an error   # don't need this, can add custom message to validation
    in model
    instance method of that model

    3. validates :ice_cream, uniqueness: { scope: :user, message: "custom message" }
    4. Use validate instead of validates for custom validator in the model. built in validators use validates

    3. nested form example

    <div>
      <%= f.label :ice_cream_id, "select an ice cream" %>
      <%= f.collection_select :ice_cream_id, IceCream.ll, :id, :flavor, include_blank: true %>
      ### :flavor is a reader method so can write a custom reader in the model that returns a string with interpolated values

    4. Scope methods (same as class methods)
      https://www.theodinproject.com/courses/ruby-on-rails/lessons/active-record-queries
      https://api.rubyonrails.org/classes/ActiveRecord/Scoping/Named/ClassMethods.html

      test them in the console
      write in the model
      call in the controller unless using as a way to display in the views once


      IceCream.joins(:reviews).group(:id).order('avg(stars) desc')

      scope :order_by_rating, -> {joins(:reviews).group(:id).order('avg(stars) desc')}

      using left_joins instead of joins includes every entry including those that don't have reviews/ratings  but that fires a lot of queries


404 and errors:
1. Use find_by_id instead of find. Then add a case in each route of where to send the user if object is not found.

  def set_object
   @object = Object.find_by_id(id: params[:id])
   redirect_to objects_path if !!@object
  end

2. if rescue is used, must use .find instead of .find_by_id


Scope method buttons to view emissions by category.  
use to show view of emissions by food Category
 - index action in emissions controller has logic to assign @emissions based on the params passed in.
 - buttons on the food index view and the emissions index view will pass in params that call scope methods.
 - Button will show the name of the category, not a drop down menu.

 Scope method buttons on food index view will order by the amount of each emission on the index page

 Button step one - create one scope method that works for one category.
 Button step two - create one button that uses the scope method that works
 Button step three - refactor scope method to pass in any category.

 Is this how it works: Button pass in params with the category to be queried.  Index action takes in the params, logic determines which scope method to call on the model.  local variable is set based on the scope method.  The local variable is passed to the index view which renders the list of emissions from the local variable.

 Is this query of the foods or emissions?
 Emissions where food.category is ?

 Would the order by emissions be the food or emissions model?
 Food since the list is by foods.
 Food. order asc by unit where unit is ?

 button passes in param of the unit.  Logic uses the param of the unit to choose which @emissions .  That is specifc to calling a joins and merge using a scope method on emissions that is hard coded with the unit.




 Wishes:
 1. order is based on average if there are multiple amounts
 2. The scope passes in the unit from button params
