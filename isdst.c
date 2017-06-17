#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int
main(
	int		argc,
	char * *	argv
)
{
	time_t const		now = time( (time_t *) NULL );
	struct tm * const	local = localtime( &now );
	puts( local->tm_isdst ? "yes" : "no" );
	return( 0 );
}
