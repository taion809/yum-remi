default['yum']['remi-php56']['repositoryid'] = 'remi-php56'

case node['platform_version'].to_i
when 5
  default['yum']['remi-php56']['description'] = 'Les RPM de remi de PHP 5.6 pour Enterprise Linux 5 - $basearch'
  default['yum']['remi-php56']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/5/php56/mirror'
when 6
  default['yum']['remi-php56']['description'] = 'Les RPM de remi de PHP 5.6 pour Enterprise Linux 6 - $basearch'
  default['yum']['remi-php56']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/6/php56/mirror'
when 7
  default['yum']['remi-php56']['description'] = 'Les RPM de remi de PHP 5.6 pour Enterprise Linux 7 - $basearch'
  default['yum']['remi-php56']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/7/php56/mirror'
end

default['yum']['remi-php56']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-php56']['failovermethod'] = 'priority'
default['yum']['remi-php56']['gpgcheck'] = true
default['yum']['remi-php56']['enabled'] = false
default['yum']['remi-php56']['managed'] = true
