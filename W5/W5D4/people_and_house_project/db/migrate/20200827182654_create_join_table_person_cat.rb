class CreateJoinTablePersonCat < ActiveRecord::Migration[5.2]
  def change
    create_join_table :people, :cats do |t|
      t.index :person_id
      t.index :cat_id
    end
  end
end
