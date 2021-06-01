# Create new rails app skeletion
rails new blog --skip-active-record --skip-bundle
cd blog

# Create new rails app skeletion as api
rails new blog --skip-active-record --skip-bundle --api
cd blog

# Modify the Gemfile to include mongoid gem
gem 'mongoid', '~> 7.0.5'
bundle install

# Generate the default Mongoid config
bin/rails g mongoid:config
<!-- This will generate config/mongoid.yml file -->

# Install webpacker
rails webpacker:install

# Run application
rails s 
<!-- navigate to localhost:3000 -->

# Start MongoDB locally or use MongoDB Atlas from Terminal
brew services start mongodb-community@4.4
mongo

# Add posts with scaffold or resource
rails g scaffold Post title:string body:text
rails g resource Post title:string body:text

# Add comments
rails g scaffold Comment name:string message:string post:belongs_to

