The Redexer Website
===================

This directory contains a [Hakyll](http://jaspervdj.be/hakyll/) based
website for the redexer project.  The directory is organized with a
simple enough setup to include a few things:

  - An index page that generally introduces the project.
  - An about page that lists the project affiliation.
  - A download page that links to the actual source.
  - A news directory, that contains multiple news items.

You can add news items at will in the form of markdown source in the
news/ directory.  If you look at the other posts there, you will see a
variety of pieces of metadata that should be included.

Generating the site
-------------------

If you have the GHC platform installed (with Hakyll), you should be
able to do a:

    ghc --make hakyll.hs

and then use the `hakyll` binary to generate the site as follows:
    
    ./hakyll build

You can also do a clean by doing a 
    
    ./hakyll clean

You will need to do a clean and rebuild after modifying the
configuration file.

To get Hakyll, you can use tha Cabal package manager:

cabal install hakyll



Modifying the site
------------------

The site is kept mostly 