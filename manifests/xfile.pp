class minimal::xfile
{
  case $::osfamily {
    'windows': {
      file { 'c:/foo.log': owner => 'root' }
    }
    default: {
      file { '/foo.log': owner => 'root' }
    }
  }
}
