# frozen_string_literal: true

class AddStatusToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :status, :integer, default: 0, null: false, after: :name
  end
end
