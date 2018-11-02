NAME
====

method-menu -- pseudo-pragma to add "m" method everywhere (a more verbose "^methods")

SYNOPSIS
========

    perl6 -Mmethod-menu
    > my @monsters = <godzilla minotaur tingler javascript>;
    > @monsters.m

       ACCEPTS                   List                     
       ASSIGN-POS                List                     
       BIND-POS                  Array                    
       BUILDALL                  Array                    
       BUILD_LEAST_DERIVED       Mu                       
       Bool                      List                     
       CALL-ME                   List                     
       CREATE                    Mu                       
       Capture                   List                     
       Complex                   Cool                     
       DUMP                      Mu                       
        ...
       unival                    Cool                     
       univals                   Cool                     
       unpolar                   Cool                     
       unshift                   List                     
       wordcase                  Cool                     
       words                     Cool

DESCRIPTION
===========

This is essentially a third-party pragma, using the (possibly evil) magic of the "augment" feature: this means it should be used only with extreme caution. It's primary intended use is learning and/or debugging sessions using the repl.

With this pseudo-pragma, every object or class should have an "m" method, which is an even shorter alias for the "menu" method defined by Object::Examine. It gives you a list of all available methods, much like the built-in "^methods" method but in a format that's hopefully more readable and informative, albiet much more verbose.
