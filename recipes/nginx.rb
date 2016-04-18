package 'nginx' do
  action :install
end

settings "/etc/nginx/nginx.conf" do
  source "../remote_files/nginx.conf"
end

settings "/etc/nginx/conf.d/app.conf" do
  source "../remote_files/app.conf"
end

service 'nginx' do
  action [:enable, :start]
end
