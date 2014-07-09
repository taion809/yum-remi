default['yum']['remi']['repositoryid'] = 'remi'

case node['platform_version'].to_i
when 5
  default['yum']['remi']['description'] = 'Les RPM de remi pour Enterprise Linux 5 - $basearch'
  default['yum']['remi']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/5/remi/mirror'
when 6
  default['yum']['remi']['description'] = 'Les RPM de remi pour Enterprise Linux 6 - $basearch'
  default['yum']['remi']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/6/remi/mirror'
when 7
  default['yum']['remi']['description'] = 'Les RPM de remi pour Enterprise Linux 7 - $basearch'
  default['yum']['remi']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/7/remi/mirror'
end

default['yum']['remi']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi']['failovermethod'] = 'priority'
default['yum']['remi']['gpgcheck'] = true
default['yum']['remi']['enabled'] = false
default['yum']['remi']['managed'] = true
