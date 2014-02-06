import 'nodes/*'

# Global defaults
Package { provider => 'zypper' }

filebucket { 'remote':
  server => 'puppet.example.org',
  path   => false,
}

# Service {
#   provider   => 'systemd',
#   hasrestart => true,
#   hasstatus  => true,
# }

File {
  owner  => 'root',
  group  => 'root',
  mode   => 0644,
  backup => 'remote',
}

# Always show stdout/stderr in the reports
Exec { logoutput => true }
