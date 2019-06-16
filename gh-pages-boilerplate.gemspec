Gem::Specification.new do |s|
  s.name        = 'gh-pages-boilerplate'
  s.version     = '0.0.0'
  s.summary     = 'GitHub Pages boilerplate for a quick presentation site launch'
  s.author      = ['Cloudaper', 'Kryštof Korb']
  s.email       = ['hello@cloudaper.com', 'krystof@korb.cz']
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/cloudaper/gh-pages-boilerplate'

  s.metadata['plugin_type'] = 'theme'

  s.files       = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(data|includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end
  
  s.add_runtime_dependency 'github-pages', '>=202'
  s.add_runtime_dependency 'jekyll-sitemap'
  s.add_runtime_dependency 'jekyll-optional-front-matter'

  s.add_development_dependency 'bundler', '>=2.0.1'
end
