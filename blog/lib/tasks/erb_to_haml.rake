unless Rails.env.production?
  desc 'Blog | convert | Convert erb files to hamlit(haml) files'
  task :erb2haml do
    Rake::Task['hamlit:erb2haml'].invoke
  rescue RuntimeError # The hamlit:erb2haml tasks raise a RuntimeError
    exit(1)
  end
end
