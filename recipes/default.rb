node['dot_env']['config'].each do |app, config|
  location = node['dot_env']['doc_root'][app.to_s]

  directory location.to_s do
    recursive true
  end

  config_string = ''
  config.each do |key, val|
    config_string << "#{key}=#{val}\n"
  end

  file "#{location}/.env" do
    action :create
    content config_string
  end
end
