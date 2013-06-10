class AddIndex < ActiveRecord::Migration
  def change
    add_index(:users, :points, :using => 'gin')
  end
end
