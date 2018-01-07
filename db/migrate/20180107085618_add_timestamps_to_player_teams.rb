# frozen_string_literal: true

class AddTimestampsToPlayerTeams < ActiveRecord::Migration[5.1]
  def change
    change_table :player_teams, &:timestamps
  end
end
