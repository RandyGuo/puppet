class ssh::config { 
     file { $ssh::params::ssh_service_config:      ##配置sshd_config文件的属性 
        ensure => present,    ##确认该文件存在，不存在用source获取 
        owner => 'root',      ##设置该文件的属主 
        group => 'root',      ##设置该文件的属组 
        mode => 0600,         ##设置该文件的权限 
        soure => "puppet:///modules/ssh/sshd_config",##获取sshd_config文件 
        require => Class["ssh::install"], ##在config处理之前，install先被处理 
        notify => Class["ssh::install"], ##和require都是指定类和资源间的依赖关系 
     }      ##require创建通知关系，当sshd_config发生改变，puppet就会通知service类，
#这样就能保证在配置文件发生改变，对应的服务使用最新的配置自动重启 
}
