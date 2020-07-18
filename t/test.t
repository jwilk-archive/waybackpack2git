#!/bin/sh

# Copyright © 2020 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

set -e -u
echo 1..1
base="${0%/*}/.."
prog="$base/waybackpack2git"
tmpdir=$(mktemp -d -t waybackpack2git.XXXXXX)
if [ -n "${WAYBACKPACK2GIT_ONLINE_TESTS-}" ]
then
    waybackpack --quiet --to-date 2002 --dir "$tmpdir"/example.org-wayback http://example.org
    "$prog" "$tmpdir"/example.org-git "$tmpdir"/example.org-wayback/2002*
    out=$(git -C "$tmpdir"/example.org-git/ log -3 --stat)
    sed -e 's/^/# / ' <<EOF
$out
EOF
    echo 'ok 1'
else
    echo 'WAYBACKPACK2GIT_ONLINE_TESTS is not set' >&2
    echo 'not ok 1'
fi
cd /
rm -rf "$tmpdir"

# vim:ts=4 sts=4 sw=4 et ft=sh
