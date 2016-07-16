directory '/ntugarage' do
  owner 'root'
  group 'root'
  mode  '00755'
end

cookbook_file '/ntugarage/docker-compose.yml' do
  source 'docker-compose.yml'
  owner 'root'
  group 'root'
  mode 00644
  action :create
end

include_recipe 'docker-compose::pull'
include_recipe 'docker-compose::stop'
include_recipe 'docker-compose::rm'
include_recipe 'docker-compose::up'
