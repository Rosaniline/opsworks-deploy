execute 'remove containers' do
    cwd '/ntugarage/'
    command 'docker-compose rm --force'
    case node[:platform]
    when 'ubuntu'
      environment 'COMPOSE_API_VERSION' => '1.18'
    end
end
