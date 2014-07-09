default['yum']['remi-php56-debuginfo']['repositoryid'] = 'remi-php56-debuginfo'

case node['platform_version'].to_i
when 5
  default['yum']['remi-php56-debuginfo']['description'] = 'Les RPM de remi de PHP 5.6 pour Enterprise Linux 5 - $basearch - debuginfo'
  default['yum']['remi-php56-debuginfo']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/5/debug-php56/$basearch/'
when 6
  default['yum']['remi-php56-debuginfo']['description'] = 'Les RPM de remi de PHP 5.6 pour Enterprise Linux 6 - $basearch - debuginfo'
  default['yum']['remi-php56-debuginfo']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/6/debug-php56/$basearch/'
when 7
  default['yum']['remi-php56-debuginfo']['description'] = 'Les RPM de remi de PHP 5.6 pour Enterprise Linux 7 - $basearch - debuginfo'
  default['yum']['remi-php56-debuginfo']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/7/debug-php56/$basearch/'
end

default['yum']['remi-php56-debuginfo']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-php56-debuginfo']['failovermethod'] = 'priority'
default['yum']['remi-php56-debuginfo']['gpgcheck'] = true
default['yum']['remi-php56-debuginfo']['enabled'] = false
default['yum']['remi-php56-debuginfo']['managed'] = true
