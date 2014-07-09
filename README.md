# yum-remi-cookbook

Manages the configuration files for the remi repository.

## Supported Platforms

centos >= 5

## Requirements
* Chef 11 or higher
* yum ~> 3.0
* yum-epel ~> 0.3.6

## Attributes
Each repository has a separate attributes file.  Here is an example attributes entry for centos 6.

All repositories are disabled by default and must be overridden or enabled in options.

``` ruby
default['yum']['remi']['repositoryid'] = 'remi'
default['yum']['remi']['description'] = 'Les RPM de remi pour Enterprise Linux 6 - $basearch'
default['yum']['remi']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/6/remi/mirror'
default['yum']['remi']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi']['failovermethod'] = 'priority'
default['yum']['remi']['gpgcheck'] = true
default['yum']['remi']['enabled'] = false
default['yum']['remi']['managed'] = true
```

## Usage

### yum-remi::default

Include `yum-remi` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[yum-remi::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Nicholas Johns (njohns@pica9.com)

#### Originally based on yum-epel (thank you)
Author:: Sean OMeara (someara@opscode.com)
