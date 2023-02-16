Check IP address:

  $ host conference.imagej.net | grep '[0-9]\{3\}\.' | sort
  imagej.github.io has address 185.199.108.153
  imagej.github.io has address 185.199.109.153
  imagej.github.io has address 185.199.110.153
  imagej.github.io has address 185.199.111.153

Check front page access:

  $ curl -s https://conference.imagej.net/ | grep '<title>' | xargs
  <title>ImageJ Conference materials</title>
