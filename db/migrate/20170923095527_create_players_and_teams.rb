# frozen_string_literal: true

class CreatePlayersAndTeams < ActiveRecord::Migration[5.1]
  def change # rubocop:disable Metrics/MethodLength
    create_table :players do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :teams do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :player_teams do |t|
      t.belongs_to :player, null: false, foreign_key: true
      t.belongs_to :team, null: false, foreign_key: true
    end
  end
end
