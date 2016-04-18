package 'nginx' do
  action :install
end

settings "/etc/nginx/nginx.conf" do
  source "../settings/nginx.conf"
end

settings "/etc/nginx/conf.d/app.conf" do
  source "../settings/app.conf"
end

service 'nginx' do
  action [:enable, :start]
end
