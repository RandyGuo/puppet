class user {
	user { 'RandyGuo':
		ensure => present,
		comment => 'bogo user',
		home => '/home/RandyGuo',
		managehome => true,
	}
}
