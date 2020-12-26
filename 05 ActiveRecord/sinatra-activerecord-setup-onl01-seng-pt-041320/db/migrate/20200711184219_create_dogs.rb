class CreateDogs < ActiveRecord::Migration[5.2]
  # same as up method
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end

  # def up
  #   create_table :dogs do |t|
  #     t.string :name
  #     t.string :breed
  #   end
  # end

  # def down
  #   drop_table :dogs
  # end
end
