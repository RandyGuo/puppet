class ssh { 
     include ssh::params, ssh::install, ssh::config, ssh::service 
##include函数将所有包含在一个类或者模块中的资源添加到节点 
}
