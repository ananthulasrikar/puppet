class cron-puppet {
    cron { 'puppet-apply':
        ensure  => present,
        command => "cd /etc/puppet ; /usr/bin/git pull",
        user    => root,
        minute  => '*/30',
        require => File['post-hook'],
    }
    user { 'srikar':
        ensure     => present,
        uid        => $num,
        shell      => '/bin/bash',
        home       => '/home/srikar'
    }
}
