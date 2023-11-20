%{
#include "y.tab.h"
%}

%%
a { return A; }
b { return B; }
\n { return END; }
.  { /* Ignore other characters */ }

%%
int yywrap() {
    return 1;
}
