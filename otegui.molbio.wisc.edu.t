Check IP address:

  $ host otegui.molbio.wisc.edu
  otegui.molbio.wisc.edu has address 144.92.48.137

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://otegui.molbio.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://otegui.molbio.wisc.edu/.hello\r (esc)

Check hello access:

  $ curl -s https://otegui.molbio.wisc.edu/.hello
  otegui.molbio.wisc.edu on himalayan

Check blanket redirect:

  $ curl -Is https://otegui.molbio.wisc.edu/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://otegui.cellimaging.wisc.edu/\r (esc)

  $ curl -Is https://otegui.molbio.wisc.edu/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://otegui.cellimaging.wisc.edu/\r (esc)
