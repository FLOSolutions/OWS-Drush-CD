execute "apt-get-update-initial" do
    command "sudo apt-get update"
      action :run
end

%w{ apt build-essential cron daemontools emacs gems git iptables java jenkins logrotate mercurial mysql perl php runit rsync rsyslog sqlite tomcat ubuntu ucspi-tcp utility vim }.each do |dep|
    include_recipe dep
end
