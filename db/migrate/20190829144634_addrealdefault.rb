class Addrealdefault < ActiveRecord::Migration[5.2]
  def change
    change_column :emails, :status, :boolean, :default => false
  end
end
