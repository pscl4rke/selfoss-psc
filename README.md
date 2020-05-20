

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

If you run `make selfoss`
the package is unzipped to the expected
(and gitignored) directory.

Patch management is easiest when using
[quilt](http://savannah.nongnu.org/projects/quilt).
In short:

    # To show current information
    $ quilt series          # show known patches
    $ quilt applied         # show current status
    $ quilt top             # the 'active' patch

    # To fix something up
    $ quilt push -a         # apply all patches
    $ quilt new abc.diff    # start a new patch
    $ quilt edit file.abc   # edit, with tracking
    $ quilt refresh         # pick up on changes
    $ git commit ...        # commit the patch
    $ make image            # rebuild in docker
    $ quilt pop -a          # all back to normal


