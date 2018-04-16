# frozen_string_literal: true

Rails.application.routes.draw do
  post '/fibonacci', to: 'fibonacci#fibonacci'
end
