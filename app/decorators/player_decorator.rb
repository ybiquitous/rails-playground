# frozen_string_literal: true

class PlayerDecorator < ApplicationDecorator
  delegate_all

  def created_at
    h.time_tag(object.created_at)
  end

  def updated_at
    h.time_tag(object.updated_at)
  end
end
