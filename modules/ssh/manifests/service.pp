class ssh::service { 
     service { $ssh::params::ssh_service_name:   ##服务名称 
        ensure => running,      ##指定该服务的状态 
        hasstatus => true,      ##puppet不能识别服务的框架，hasstatus和hasrestart 
        hasrestart => true,     ##是一种告诉puppet服务细节的方法，如果hasstatus为真 
#puppet就知道服务框架并获取当前状态的名令，如CentOS上的service sshd status 
        enable => true,         ##指定该服务的启动级别 
        require => Class["ssh::config"],##在处理service之前，config先被处理 
     } 
}
