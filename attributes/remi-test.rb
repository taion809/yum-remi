default['yum']['remi-test']['repositoryid'] = 'remi-test'

case node['platform_version'].to_i
when 5
  default['yum']['remi-test']['description'] = 'Les RPM de remi en test pour Enterprise Linux 5 - $basearch'
  default['yum']['remi-test']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/5/test/mirror'
when 6
  default['yum']['remi-test']['description'] = 'Les RPM de remi en test pour Enterprise Linux 6 - $basearch'
  default['yum']['remi-test']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/6/test/mirror'
when 7
  default['yum']['remi-test']['description'] = 'Les RPM de remi en test pour Enterprise Linux 7 - $basearch'
  default['yum']['remi-test']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/7/test/mirror'
end

default['yum']['remi-test']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-test']['failovermethod'] = 'priority'
default['yum']['remi-test']['gpgcheck'] = true
default['yum']['remi-test']['enabled'] = false
default['yum']['remi-test']['managed'] = true
