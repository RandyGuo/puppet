    class ssh::params { 
         case $operatingsystem {     ##判断操作系统的类型、安装合适的软件包并进行配置 
            /(RedHat|CentOS|Ferdoar)/: { 
              $ssh_package_name = 'openssh-server', 
              $ssh_service_config = '/etc/ssh/sshd_config', 
              $ssh_service_name = 'sshd', 
            } 
            Solaris: { 
              $ssh_package_name = 'openssh', 
              $ssh_service_config = '/etc/ssh/sshd_config', 
              $ssh_service_name = 'sshd', 
            } 
            /(Ubuntn|Debian)/: { 
              $ssh_package_name = 'openssh-server', 
              $ssh_service_config = '/etc/ssh/sshd_config', 
              $ssh_service_name = 'sshd', 
            } 
         } 
    } 
