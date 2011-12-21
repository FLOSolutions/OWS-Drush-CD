require 'librarian/chef/integration/knife'

current_dir = File.dirname(__FILE__)

log_level                :info
log_location             STDOUT
cookbook_path            [ Librarian::Chef.install_path, "cookbooks-overrides" ]

cookbook_copyright       'FLOSolutions'
cookbook_license         'apachev2'
