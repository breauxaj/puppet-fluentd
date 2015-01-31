define fluentd::service (
  $ensure = running,
  $enable = true
) {
  $service = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'td-agent',
  }

  service { $service:
    ensure  => $ensure,
    enable  => $enable,
  }

}
