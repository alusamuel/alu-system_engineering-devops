# Puppet script to configure SSH client to use a specific private key and disable password authentication
class ssh_config {
  file_line { 'Declare identity file':
    path  => '/etc/ssh/ssh_config',
    line  => '    IdentityFile ~/.ssh/school',
    match => '^\s*IdentityFile',
  }

  file_line { 'Turn off passwd auth':
    path  => '/etc/ssh/ssh_config',
    line  => '    PasswordAuthentication no',
    match => '^\s*PasswordAuthentication',
  }
}

include ssh_config
