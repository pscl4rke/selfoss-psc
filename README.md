

[Selfoss](https://selfoss.aditu.de/)
is a very good RSS feed reader,
which I've been using since
Google Reader
shut down in 2013.

It's a self-hosted PHP application
that almost exactly suits my needs.
However there are a few changes to its
appearance and behaviour I want to make.
This repository collects up my patches,
and also provides the support files
for running it through Docker.

Patch management is easiest when using
[quilt](http://savannah.nongnu.org/projects/quilt).
If you pass `-d selfoss` to `unzip`
the package is unzipped to the expected
(and gitignored) directory.

