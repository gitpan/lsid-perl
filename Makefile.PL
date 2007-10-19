use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'lsid-perl',
    'VERSION_FROM'	=> 'LS.pm', # finds $VERSION
    'PMLIBDIRS' 	=> ['LS'],
    'PREREQ_PM'		=> {
	SOAP::Lite => '0.60',
	Compress::Zlib => '1.22',
	URI => '1.21',
	LWP => '5.53',
	Net::FTP => '2.65',
	Net::DNS => '0.28',
	XML::XPath => '1.12',
	MIME::Base64 => '2.12',
	File::Temp => '0.12',
	File::Copy => '>2.00',
	RDF::Core => '0.30',
	Time::HiRes => '1.20',
	MIME::Tools => '>=6.106',
	Error=> '>=0.15',
    }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (
       AUTHOR     => 'IBM (http://lsid.sourceforge.net/)') : ()),
);
