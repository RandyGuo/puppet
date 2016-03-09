class ssh::install {  
     packe { $ssh::params::ssh_package_name:  ##引用params里面定义的软件包名
        ensure => present, ##prensent值表示：如果SSH没安装，则安装，
#可以installed来带替，还反的值absent  
     }      
} 
