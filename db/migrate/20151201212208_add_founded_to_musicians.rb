class AddFoundedToMusicians < ActiveRecord::Migration
  def change
    add_column :musicians, :founded, :integer
  end
end
