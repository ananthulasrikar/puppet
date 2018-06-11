class profile::java {
  class { 'java':
    distribution => 'jre',
  }
}
