use strict;

use Module::Build;

Module::Build->new( module_name => 'DateTime::Format::Excel',
                    author      => 'Dave Rolsky <autarch@urth.org>',
                    license     => 'perl',
                    requires    => { 'DateTime' => 0.1705,
                                     'Test::More' => '0.47',
                                   },
		    sign        => 1,
                    create_makefile_pl => 'passthrough',
                  )->create_build_script;
