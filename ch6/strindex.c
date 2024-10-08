/* strindex:  return index of t in s, -1 if none */

#include <string.h>
#include "strindex.h"

int strindex(char *s, char *t)
{
    int i, n;
    
    n = strlen(t);
    for (i = 0; s[i] != '\0'; i++)
        if (strncmp(s+i, t, n) == 0)
            return i;
        return -1;
}

