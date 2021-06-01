# Create new rails app skeletion
rails new blog --skip-active-record --skip-bundle
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

# Add posts
bin/rails g scaffold Post title:string body:text

# Add comments
bin/rails g scaffold Comment name:string message:string post:belongs_to

