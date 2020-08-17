class AddReferenceColumnOfUserIdToCocktail < ActiveRecord::Migration[6.0]
  def change
    add_reference :cocktails, :user, foreign_key: true
  end
end
