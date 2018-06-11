class cron-puppet {
    user { 'srikar':
        ensure     => present,
        uid        => 12345,
        shell      => '/bin/bash',
        home       => '/home/srikar'
    }
}
