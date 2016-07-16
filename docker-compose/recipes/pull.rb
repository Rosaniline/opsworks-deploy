execute 'pull containers images' do
    cwd '/ntugarage/'
    command 'docker-compose pull'
    case node[:platform]
    when 'ubuntu'
      environment 'COMPOSE_API_VERSION' => '1.18'
    end
end
