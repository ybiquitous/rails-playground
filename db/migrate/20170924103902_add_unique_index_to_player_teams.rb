# frozen_string_literal: true

class AddUniqueIndexToPlayerTeams < ActiveRecord::Migration[5.1]
  def change
    add_index :player_teams, %i[player_id team_id], unique: true
  end
end
