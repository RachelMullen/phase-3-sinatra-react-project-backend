class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # User Routes
  # Grab User & In Progress
  get '/users/:username' do
    user = User.find_by(username: params[:username]).to_json
    in_progress = user.hunts.uniq
    [user, in_progress]
  end

  post '/users' do
    user = User.create(username: params[:username], password: params[:password]).to_json
    in_progress = user.hunts.uniq
    [user, in_progress]
  end

  # Visit Array Routes
 
end
