# Rails 7 Todo App

## Setup

```shell
# Install Bundler
gem install bundler
# Install Rails Gems and initialization
bundle install
# Initialize Rails Database
rails db:migrate
# Build initial Tailwind CSS
rails tailwindcss:build
```

After the setup run `rails s` and then visit the [Todo App](localhost:3000) at localhost:3000

You should see this webpage

![image](https://user-images.githubusercontent.com/6473652/160688731-c8707470-9be5-4833-ba67-0070545bc25f.png)


## Development setup

```shell
# Install foreman to run development mode
gem install foreman
# Run development server
./bin/dev
```
