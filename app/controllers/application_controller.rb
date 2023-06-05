# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def test_method
    Rails.logger.debug 'TESet'
  end
end
