Rails.application.routes.draw do
  resources :students, only: %i[ index new show edit create update ]
  resources :school_classes, only: %i[ index new show edit create update ]
end
