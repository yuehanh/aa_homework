class CreateJoinTablePersonDog < ActiveRecord::Migration[5.2]
  def change
    create_join_table :people, :dogs do |t|
      t.index [:person_id, :dog_id]
      t.index [:dog_id, :person_id]
    end
  end
end
