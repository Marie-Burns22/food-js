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
