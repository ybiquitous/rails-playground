# frozen_string_literal: true

class PlayersController < ApplicationController
  def index
    @players = Player.all.decorate
  end

  def show
    @player = find_player.decorate
  end

  def new
    @player = Player.new
  end

  def edit
    @player = find_player
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to @player, notice: t('.success')
    else
      render :new
    end
  end

  def update
    @player = find_player
    if @player.update(player_params)
      redirect_to @player, notice: t('.success')
    else
      render :edit
    end
  end

  def destroy
    @player = find_player
    @player.destroy
    redirect_to players_url, notice: t('.success')
  end

  private

  def find_player
    Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :status)
  end
end
