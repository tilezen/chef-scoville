# where to put scoville and its config files
default[:scoville][:cfg_path]                    = '/etc/scoville'
default[:scoville][:cfg_file]                    = 'config.yaml'
default[:scoville][:bin_path]                    = '/usr/local/bin/scoville'
default[:scoville][:logging_file]                = 'logging.conf'

# scoville user to create
default[:scoville][:user][:user]                 = 'scoville'
default[:scoville][:user][:home]                 = "/home/#{node[:scoville][:user][:user]}"
default[:scoville][:user][:create_group]         = true
default[:scoville][:user][:enabled]              = true

# which version of scoville to install?
default[:scoville][:revision][:scoville] = 'master'

default[:scoville][:runit][:timeout]        = 60

# scoville config
default[:scoville][:database]         = 'dbname=scoville'
default[:scoville][:mapzen][:api_key] = 'YOUR_API_KEY_HERE'
default[:scoville][:mapzen][:host]    = 'localhost'
default[:scoville][:region]           = 'local'
default[:scoville][:run_interval]     = 60
default[:scoville][:tiles]            = ''
