use strict;
use warnings;
use ExtUtils::MakeMaker;

# Normalize version strings like 6.30_02 to 6.3002,
# so that we can do numerical comparisons on it.
my $eumm_version = $ExtUtils::MakeMaker::VERSION;
$eumm_version =~ s/_//;

our %prereq_pm = (
    'Moo'                           => 0,
    'strictures'                    => '2',
    'namespace::clean'              => 0,
    'FindBin'                       => '1.51',
    'perl'                          => '5.010001',
    'Moo'                           => 0,
    'strictures'                    => '>=2, <3',
    'namespace::clean'              => 0,
    'Mojo::UserAgent'               => 0,
    'Mojo::UserAgent::Role::Queued' => 0,
    'Mojo::IOLoop'                  => 0,
    'Mojo::JSON'                    => 0,
    'Mojo::Util'                    => 0,
    'Mojo::Log'                     => 0,
    'Mojo::Promise'                 => 0,
    'JSON::MaybeXS'                 => 0,
    'Compress::Zlib'                => 0,
    'Encode::Guess'                 => 0,
    'Data::Dumper'                  => 0,
    'IO::Socket::SSL'               => 0,
    'Role::EventEmitter'            => 0,
    'Time::Duration'                => 0,
    'URI::Escape'                   => 0,

);

return 1 if caller();

WriteMakefile(
    NAME                => 'Mojo::Discord',
    AUTHOR              => q{Mojo},
    VERSION_FROM        => 'lib/Mojo/Discord.pm',
    ABSTRACT            => 'Perl library to communicate with Discord',
    ($eumm_version >= 6.3001
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM           => \%prereq_pm,
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'MojoDiscord-*' },
);
