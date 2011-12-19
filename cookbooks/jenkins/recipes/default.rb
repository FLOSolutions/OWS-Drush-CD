include_recipe "tomcat"

directory "/usr/share/tomcat6/.jenkins" do
  owner "tomcat6"
  group "nogroup"
  mode 0755
  action :create
end

remote_file "/var/lib/tomcat6/webapps/jenkins.war" do
  source "http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
  mode 0644
  checksum "d004192da6c2061c11f7e6cd17603489"
  not_if do
    File.exists?("/var/lib/tomcat6/webapps/jenkins.war")
  end
end
