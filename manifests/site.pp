node default {
    include cron-puppet
    include java::oracle { 'jdk8' :
  ensure  => 'present',
  version_major => '8u101',
  version_minor => 'b13',
  java_se => 'jdk',
}
}
