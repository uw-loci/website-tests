Check IP address:

  $ host microscopy.wisc.edu
  microscopy.wisc.edu has address 144.92.48.136

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://microscopy.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://microscopy.wisc.edu/.hello

Check hello access:

  $ curl -s https://microscopy.wisc.edu/.hello
  microscopy.wisc.edu on himalayan

Check calendars redirect:

  $ curl -Is https://microscopy.wisc.edu/cgi-bin/calendar/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://calendars.loci.wisc.edu/

Check blanket redirect:

  $ curl -Is https://microscopy.wisc.edu/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://resources.research.wisc.edu/

  $ curl -Is https://microscopy.wisc.edu/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://resources.research.wisc.edu/
