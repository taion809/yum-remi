default['yum']['remi-debuginfo']['repositoryid'] = 'remi-debuginfo'

case node['platform_version'].to_i
when 5
  default['yum']['remi-debuginfo']['description'] = 'Les RPM de remi pour Enterprise Linux 5 - $basearch - debuginfo'
  default['yum']['remi-debuginfo']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/5/debug-remi/$basearch/'
when 6
  default['yum']['remi-debuginfo']['description'] = 'Les RPM de remi pour Enterprise Linux 6 - $basearch - debuginfo'
  default['yum']['remi-debuginfo']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/6/debug-remi/$basearch/'
when 7
  default['yum']['remi-debuginfo']['description'] = 'Les RPM de remi pour Enterprise Linux 7 - $basearch - debuginfo'
  default['yum']['remi-debuginfo']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/7/debug-remi/$basearch/'
end

default['yum']['remi-debuginfo']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-debuginfo']['failovermethod'] = 'priority'
default['yum']['remi-debuginfo']['gpgcheck'] = true
default['yum']['remi-debuginfo']['enabled'] = false
default['yum']['remi-debuginfo']['managed'] = true
