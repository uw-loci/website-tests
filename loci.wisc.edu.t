Check front page:

  $ curl -Ns https://loci.wisc.edu/ | grep '<title>' | sed 's/ &.*</</' | xargs
  <title>Laboratory for Optical and Computational Instrumentation</title>
