# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_171_005_004_555) do
  create_table 'locations', force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'player_teams', force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
    t.bigint 'player_id', null: false
    t.bigint 'team_id', null: false
    t.index %w[player_id team_id], name: 'index_player_teams_on_player_id_and_team_id', unique: true
    t.index ['player_id'], name: 'index_player_teams_on_player_id'
    t.index ['team_id'], name: 'index_player_teams_on_team_id'
  end

  create_table 'players', force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
    t.string 'name', null: false
    t.integer 'status', default: 0, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'teams', force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'player_teams', 'players'
  add_foreign_key 'player_teams', 'teams'
end
