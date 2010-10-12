#!/usr/bin/env perl
use warnings;
use strict;

&print_notes;

sub print_notes {
    print <<HERE;
mkdir --parent /usr/lib/chromium/plugins
cd /usr/lib/chromium/plugins
wget --no-clobber https://s3.amazonaws.com/troywill/devel/flash/libflashplayer.so
md5sum libflashplayer.so
# 214bf48a2ee8bdfd3108e07250911aba  libflashplayer.so
chromium --enable-plugins
# That's it
# Troy Will <troydwill@gmail.com> 2010-10-12
HERE
}
