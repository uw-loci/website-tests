Check IP address:

  $ host molbio.wisc.edu
  molbio.wisc.edu has address 144.92.48.137
  molbio.wisc.edu mail is handled by 0 mail.bocklabs.wisc.edu.

  $ host www.molbio.wisc.edu
  www.molbio.wisc.edu has address 144.92.48.137

Check www redirect:

  $ curl -Is http://www.molbio.wisc.edu | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://molbio.wisc.edu/

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://molbio.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://molbio.wisc.edu/.hello

Check hello access:

  $ curl -s https://molbio.wisc.edu/.hello
  molbio.wisc.edu on cheetoh

Check site content:

  $ curl -s https://molbio.wisc.edu/ | grep '<title>' | xargs
  <title>Home | Laboratory of Cell &amp; Molecular Biology</title>
