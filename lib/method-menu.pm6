use Object::Examine;
use Augment::Util;
use MONKEY-TYPING;
augment class Any does Introspector {
    method m {
        return self.menu;
    }
    Recomposer.recompose_core();
}

=begin pod

=head1 NAME

method-menu -- pseudo-pragma to add "m" method everywhere (a more verbose "^methods")

=head1 SYNOPSIS

   perl6 -Mmethod-menu
   > my @monsters = <grendel godzilla minotaur tingler javascript>;
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


=head1 DESCRIPTION

This is essentially a third-party pragma, using the (possibly
evil) magic of the "augment" feature: this means it should be
used only with extreme caution.  It's primary intended use is
learning and/or debugging sessions using the repl.

With this pseudo-pragma, every object or class should have an "m"
method, which is an even shorter alias for the "menu" method
defined by Object::Examine.  It gives you a list of all available
methods, much like the built-in "^methods" method but in a format
that's hopefully more readable and informative, albiet much more
verbose.

The "m" method is named after the perl5 debugger command "m".


=head1 TROUBLESHOOTING

=head2 installation

The pseudo-pragma method-menu needs three other modules:

                      Symbol::Scan
                         |
  Object::Examine      Augment::Util
    |                    |
    |--------------------/
    |
  method-menu

If there are issues with getting all four components installed, you 
might resort to manual installation.  The code is available on github:

   https://github.com/doomvox/perl6-object-examine
   https://github.com/doomvox/perl6-symbol-scan
   https://github.com/doomvox/perl6-augment-util
   https://github.com/doomvox/perl6-method-menu

=end pod

