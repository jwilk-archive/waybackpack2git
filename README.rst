.. code:: console

   $ waybackpack --quiet --to-date 2002 --dir example.org-wayback http://example.org

   $ waybackpack2git example.org-git example.org-wayback/2002*
   Initialized empty Git repository in /home/jwilk/example.org-git/.git/
   HEAD is now at f70bc8d 

   $ git -C example.org-git/ log -3 --stat
   commit f70bc8d86022b0910651bccfbcbb18eb1ec60063
   Author: Jakub Wilk <jwilk@jwilk.net>
   Date:   2002-11-29 11:14:05 +0000
   
    example.org/index.html | 4 ++--
    1 file changed, 2 insertions(+), 2 deletions(-)
   
   commit 6ffe5c3abda59e29e622ff464b6628963611f5b4
   Author: Jakub Wilk <jwilk@jwilk.net>
   Date:   2002-11-28 04:56:17 +0000
   
    example.org/index.html | 4 ++--
    1 file changed, 2 insertions(+), 2 deletions(-)
   
   commit 67ad72c0a706057ee4ada03876c9f22eacfdebc9
   Author: Jakub Wilk <jwilk@jwilk.net>
   Date:   2002-11-21 09:48:39 +0000
   
    example.org/index.html | 5 +++--
    1 file changed, 3 insertions(+), 2 deletions(-)

.. vim:ts=3 sts=3 sw=3 et
