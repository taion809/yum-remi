default['yum']['remi-test-debuginfo']['repositoryid'] = 'remi-test-debuginfo'

case node['platform_version'].to_i
when 5
  default['yum']['remi-test-debuginfo']['description'] = 'Les RPM de remi en test pour Enterprise Linux 5 - $basearch - debuginfo'
  default['yum']['remi-test-debuginfo']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/5/debug-test/$basearch/'
when 6
  default['yum']['remi-test-debuginfo']['description'] = 'Les RPM de remi en test pour Enterprise Linux 6 - $basearch - debuginfo'
  default['yum']['remi-test-debuginfo']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/6/debug-test/$basearch/'
when 7
  default['yum']['remi-test-debuginfo']['description'] = 'Les RPM de remi en test pour Enterprise Linux 7 - $basearch - debuginfo'
  default['yum']['remi-test-debuginfo']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/7/debug-test/$basearch/'
end

default['yum']['remi-test-debuginfo']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-test-debuginfo']['failovermethod'] = 'priority'
default['yum']['remi-test-debuginfo']['gpgcheck'] = true
default['yum']['remi-test-debuginfo']['enabled'] = false
default['yum']['remi-test-debuginfo']['managed'] = true
