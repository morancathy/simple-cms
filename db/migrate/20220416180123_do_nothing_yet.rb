class DoNothingYet < ActiveRecord::Migration[5.2]
  # class inherits from ActiveRecord::Migration, which gives it all its availbilties to behave like a migration. 5.2 is version

  # def change
  # end
  # change is shorthand from having seperate up and down methods. It contains only up code, and lets rails reverse method if wanted
  #Not all action can be automatically reverse. This case,you cannt use change. must use explicit up and down methods.


  #when run migrations, rails executes code inside up or down method.
  
  def up  #describe changes we want to make to current db
  
  end

  def down   #describes how to reverse changes in up/undo the code thats in up method. They are mirror images of each other.
  
  end
  
end
