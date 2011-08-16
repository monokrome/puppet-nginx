class nginx {
	package {
		"nginx":
			ensure => installed,
	}

	service {
		"nginx":
			ensure => running,
			require => Package["nginx"],
	}

	file {
		"/etc/nginx":
			ensure => directory,
			require => Package["nginx"],
			source => "puppet:///nginx/nginx",
			recurse => true,
	}
}

