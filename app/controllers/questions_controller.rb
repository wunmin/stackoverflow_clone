class QuestionsController < ApplicationController

  resources :questions

  namespace :questions do
    resource :answers
  end
end
