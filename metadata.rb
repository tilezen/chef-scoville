name             'scoville'
maintainer       'Mapzen'
maintainer_email 'matt.amos@mapzen.com'
license          'MIT'
description      'Installs/Configures scoville'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.2'

recipe 'scoville', 'Installs Scoville'

%w(
  apt
  git
  runit
  user
).each do |dep|
  depends dep
end

%w(ubuntu).each do |os|
  supports os
end
