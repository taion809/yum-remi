name             'yum-remi'
maintainer       'Pica9'
maintainer_email 'dev@pica9.com'
license          'Apache 2.0'
description      'Installs/Configures yum-remi'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'yum', '~> 3.0'
depends 'yum-epel', '~> 0.3.6'
