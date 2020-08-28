class AddPersonRefToCats < ActiveRecord::Migration[5.2]
  def change
    add_reference :cats, :person, foreign_key: true
  end
end
