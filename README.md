# Capistrano::Unicorn

Adds tasks to manage Unicorn processes.

Each task tries to mirrors the [Unicorn semantic](http://unicorn.bogomips.org/SIGNALS.html) :

- `deploy:start` : start a new process if none is running
- `deploy:stop` : gracefully stop the process if found
- `deploy:shutdown` : kill the process immediately
- `deploy:restart` : stop then start
- `deploy:upgrade` : replace the process with a new one, without downtime
- `deploy:add_worker` : increment the number of worker processes by one
- `deploy:rem_worker` : decrement the number of worker processes by one
- `deploy:reopen_logs` : reopen all logs owned by the master and all workers

By default, after a deploy is finished (after the `:publishing` event), `deploy:upgrade` is executed to perform a complete restart of the process, without downtime.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-unicorn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-unicorn

To enable the recipe, add this to your `Capfile` :

```ruby
require 'capistrano/unicorn'
```

## Usage

You can use the gem without any further configuration, but you can adjust some settings :

- `unicorn_pidfile` : path of the PID file (`#{current_path}/tmp/pids/unicorn.pid` by default)
- `unicorn_env` : environment to start the process in (fetching `:rails_env` by default)
- `unicorn_bin` : name of the executable (`unicorn` by default)
- `unicorn_roles` : capistrano roles to use (`:app` by default)
- `unicorn_upgrade_timeout` : tiemout (in seconds) after upgrade, before showing an error (`60` by default)
- `unicorn_action_after_publish` : action to exectute at the end of the deploy (`:upgrade` by default)

For example, you can add this to your `deploy.rb` :

```ruby
set :unicorn_action_after_publish, -> { "deploy:restart" }
```

It will perform a hard restart of Unicorn,instead of an upgrade.

## Contributing

1. Fork it ( https://github.com/jlecour/capistrano-unicorn/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
