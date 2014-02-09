module Rails
  class << self
    def root
      File.expand_path(__FILE__).split('/')[0..-3].join('/')
    end
  end
end
rails_env = ENV["RAILS_ENV"] || "production"

preload_app true
working_directory Rails.root
pid "#{Rails.root}/tmp/pids/unicorn.pid"
stderr_path "#{Rails.root}/log/unicorn.log"
stdout_path "#{Rails.root}/log/unicorn.log"

listen "/tmp/unicorn.shop.sock"
worker_processes 3
timeout 120
