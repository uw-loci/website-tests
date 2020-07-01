Check IP address:

  $ host jenkins.imagej.net
  jenkins.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://jenkins.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://jenkins.imagej.net/hello

Check hello access:

  $ curl -s https://jenkins.imagej.net/hello
  jenkins.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://jenkins.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Jenkins

  $ curl -Is https://jenkins.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Jenkins

  $ curl -Is https://jenkins.imagej.net/job/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Jenkins

Check job and view redirects:

  $ curl -Is https://jenkins.imagej.net/job/BAR | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/tferr/Scripts

  $ curl -Is https://jenkins.imagej.net/job/Bio-Formats | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://ci.openmicroscopy.org/view/Bio-Formats/

  $ curl -Is https://jenkins.imagej.net/job/Bio-Formats-Fiji | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/ome/bio-formats-fiji

  $ curl -Is https://jenkins.imagej.net/job/Bio-Formats-daily | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://ci.openmicroscopy.org/view/Bio-Formats/

  $ curl -Is https://jenkins.imagej.net/job/Bio-Formats-maven | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://ci.openmicroscopy.org/view/Bio-Formats/

  $ curl -Is https://jenkins.imagej.net/job/BoneJ2 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/bonej-org/BoneJ2

  $ curl -Is https://jenkins.imagej.net/job/Bump-POM-SciJava | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/scijava/scijava-scripts

  $ curl -Is https://jenkins.imagej.net/job/Fiji | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/fiji

  $ curl -Is https://jenkins.imagej.net/job/Fiji-javadoc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/fiji-javadoc

  $ curl -Is https://jenkins.imagej.net/job/Fiji-minimal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/fiji

  $ curl -Is https://jenkins.imagej.net/job/IO | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/IO

  $ curl -Is https://jenkins.imagej.net/job/ImageJ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imagej/imagej

  $ curl -Is https://jenkins.imagej.net/job/ImageJ-1.x-patcher | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imagej/ij1-patcher

  $ curl -Is https://jenkins.imagej.net/job/ImageJ-Ops | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imagej/imagej-ops

  $ curl -Is https://jenkins.imagej.net/job/ImageJ-Scripting | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imagej/imagej-scripting

  $ curl -Is https://jenkins.imagej.net/job/ImageJ-Server | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imagej/imagej-server

  $ curl -Is https://jenkins.imagej.net/job/ImageJ-common | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imagej/imagej-common

  $ curl -Is https://jenkins.imagej.net/job/ImageJ-javadoc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imagej/imagej-javadoc

  $ curl -Is https://jenkins.imagej.net/job/ImageJ-launcher | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imagej/imagej-launcher

  $ curl -Is https://jenkins.imagej.net/job/ImageJ-legacy | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imagej/imagej-legacy

  $ curl -Is https://jenkins.imagej.net/job/ImageJ1-unit-tests | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.com/github/imagej/ij1-tests

  $ curl -Is https://jenkins.imagej.net/job/Image_5D | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/Image_5D

  $ curl -Is https://jenkins.imagej.net/job/ImgLib2 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imglib/imglib2

  $ curl -Is https://jenkins.imagej.net/job/JEX | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/jaywarrick/JEX

  $ curl -Is https://jenkins.imagej.net/job/Java3D-javadoc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/java3d-javadoc

  $ curl -Is https://jenkins.imagej.net/job/LOCI | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://jenkins.imagej.net/job/MorphoLibJ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/ijpb/MorphoLibJ

  $ curl -Is https://jenkins.imagej.net/job/Parsington | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/parsington

  $ curl -Is https://jenkins.imagej.net/job/Release-Version | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/scijava/scijava-scripts

  $ curl -Is https://jenkins.imagej.net/job/SCIFIO | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scifio/scifio

  $ curl -Is https://jenkins.imagej.net/job/SLIM-curve | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.com/github/flimlib/flimlib

  $ curl -Is https://jenkins.imagej.net/job/SciJava-common | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/scijava-common

  $ curl -Is https://jenkins.imagej.net/job/Sholl-Analysis | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/tferr/ASA

  $ curl -Is https://jenkins.imagej.net/job/Simple_Neurite_Tracer | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/SNT

  $ curl -Is https://jenkins.imagej.net/job/Source-Code-Status | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/status.scijava.org

  $ curl -Is https://jenkins.imagej.net/job/Stable-Fiji | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/fiji

  $ curl -Is https://jenkins.imagej.net/job/TrackMate | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/TrackMate

  $ curl -Is https://jenkins.imagej.net/job/TrakEM2 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/trakem2/TrakEM2

  $ curl -Is https://jenkins.imagej.net/job/VIB | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/VIB

  $ curl -Is https://jenkins.imagej.net/job/VIB-lib | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/VIB-lib

  $ curl -Is https://jenkins.imagej.net/job/View5D | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.com/github/fiji/View5D

  $ curl -Is https://jenkins.imagej.net/job/imagescience | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagescience/ImageScience

  $ curl -Is https://jenkins.imagej.net/job/indago | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/TrNdy/indago

  $ curl -Is https://jenkins.imagej.net/job/jar2lib | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/uw-loci/jar2lib

  $ curl -Is https://jenkins.imagej.net/job/javac | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/javac

  $ curl -Is https://jenkins.imagej.net/job/jvmlink | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/uw-loci/jvmlink

  $ curl -Is https://jenkins.imagej.net/job/legacy-imglib1 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/fiji/legacy-imglib1

  $ curl -Is https://jenkins.imagej.net/job/misc-plugins | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/uw-loci/misc-plugins

  $ curl -Is https://jenkins.imagej.net/job/native-lib-loader | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/native-lib-loader

  $ curl -Is https://jenkins.imagej.net/job/pom-bigdataviewer | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/bigdataviewer/pom-bigdataviewer

  $ curl -Is https://jenkins.imagej.net/job/pom-fiji | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/pom-scijava

  $ curl -Is https://jenkins.imagej.net/job/pom-imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/pom-scijava

  $ curl -Is https://jenkins.imagej.net/job/pom-imglib2 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/imglib/pom-imglib2

  $ curl -Is https://jenkins.imagej.net/job/pom-loci | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/pom-scijava

  $ curl -Is https://jenkins.imagej.net/job/pom-scifio | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/pom-scijava

  $ curl -Is https://jenkins.imagej.net/job/pom-scijava | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/pom-scijava

  $ curl -Is https://jenkins.imagej.net/job/pom-scijava-base | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/pom-scijava-base

  $ curl -Is https://jenkins.imagej.net/job/script-editor | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/scijava/script-editor

  $ curl -Is https://jenkins.imagej.net/job/slim-plotter | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/uw-loci/slim-plotter

  $ curl -Is https://jenkins.imagej.net/job/slim-plugin | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.com/github/flimlib/slim-plugin

  $ curl -Is https://jenkins.imagej.net/job/visbio | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/uw-loci/visbio

  $ curl -Is https://jenkins.imagej.net/job/visbio-imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/uw-loci/visbio-imagej

  $ curl -Is https://jenkins.imagej.net/job/wiscscan-java | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/uw-loci/wiscscan-java

  $ curl -Is https://jenkins.imagej.net/job/z-spacing | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/saalfeldlab/z-spacing

  $ curl -Is https://jenkins.imagej.net/view/BoneJ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://travis-ci.org/github/bonej-org/BoneJ2
