Check IP address:

  $ host samples.fiji.sc
  samples.fiji.sc has address 144.92.48.191

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://samples.fiji.sc/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://samples.fiji.sc/hello

Check hello access:

  $ curl -s https://samples.fiji.sc/hello
  samples.fiji.sc on devonrex

Check top-level directory index:

  $ curl -s https://samples.fiji.sc/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | sort
  12_9.tif
  150707_WTstack.lsm
  5602-01_4_568_633_x63_stack2_Channel_BLUE.tif
  Al2O3-block.tif
  blobs.png
  ?C=D;O=A
  Celegans-5pc-17timepoints.tif
  Celegans-5pc-17timepoints.zip
  colocsample1b.lsm
  colocsample1bRGB_BG.tif
  FakeTracks.tif
  first-instar-brain.zip
  _malaria_parasites.tif
  MaMuT_TGMM_Parhyale_demo.xml
  MessedUpColoc.png
  MessedUpColoc.txt
  new-lenna.jpg
  originals.zip
  sample2.lsm
  Sintered_Alumina.tif.zip
  sio-test-images.zip
  sporo12crop-leftP.avi
  tutorials/
