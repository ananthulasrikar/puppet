class profile::java {
  class { '::java':
    distribution          => 'jdk',
    package               => 'java-1.8.0-openjdk-devel',
    java_alternative      => 'jre-1.8.0-openjdk.x86_64',
    java_alternative_path => '/usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/java',
  }
}
