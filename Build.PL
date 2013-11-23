
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.4202"
  },
  "configure_requires" => {
    "Module::Build" => "0.4202"
  },
  "dist_abstract" => "An evolution of POD",
  "dist_author" => [
    "Kent Fredric <kentfredric\@gmail.com>"
  ],
  "dist_name" => "MetaPOD",
  "dist_version" => "0.2.5",
  "license" => "perl",
  "module_name" => "MetaPOD",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Data::Dump" => 0,
    "List::AllUtils" => 0,
    "Module::Runtime" => 0,
    "Moo" => "1.000008",
    "Moo::Role" => 0,
    "Pod::Eventual" => 0,
    "Throwable::Error" => 0,
    "perl" => "v5.10.0",
    "strict" => 0,
    "version" => "0.77",
    "warnings" => 0
  },
  "script_files" => [],
  "test_requires" => {
    "FindBin" => 0,
    "Path::Tiny" => 0,
    "Test::Fatal" => 0,
    "Test::More" => "1.001002"
  }
);


my %fallback_build_requires = (
  "FindBin" => 0,
  "Module::Build" => "0.4202",
  "Path::Tiny" => 0,
  "Test::Fatal" => 0,
  "Test::More" => "1.001002"
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
