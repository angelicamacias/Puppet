class angelica_training::lambda {

  include angelica_training::service

  $create_files_array = [
                          amacias_1,root,root,0777,'root:root:0777',
                          amacias_2,sms,auto,0666,'sms:auto:0666',
                          amacias_3,root,root,0555,'root:root:0555',
                          amacias_4,sms,auto,0755,'sms:auto:0755',
                          amacias_5,smsrf,auto,0755,'smsrf:auto:0755'
                        ]

  $create_files_array.each |$file| {
    $split_line = $line.split(',')

    $name_file = $split_line[0]
    $owner = $split_line[1]
    $group = $split_line[2]
    $mode = $split_line[3]
    $content = $split_line[4]

    file { "/user/sms/tmp/$name_file":
      ensure  => present,
      content => $content,
      owner   => $owner,
      group   => $group,
      mode    => $mode,
      notify  => Service['cups']
    }
  }
  
