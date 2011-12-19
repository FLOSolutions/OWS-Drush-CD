execute "apt-get-update-initial" do
  command "sudo apt-get update"
  action :run
end

%w{ apache2 apt build-essential cron daemontools emacs gems git imagemagick iptables java logrotate memcached mercurial mysql nginx perl php postfix runit rsync rsyslog sqlite ubuntu ucspi-tcp utility varnish vim }.each do |dep|
  include_recipe dep
end
