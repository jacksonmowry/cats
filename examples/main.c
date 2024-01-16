#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "templates.h"

int main() {
  char *first_name = "Joe";
  char *last_name = "Smith";
  int hi = 43;
  char *author = "Billy Bob";
  char  *title = "article 5";
  char *rendered_template = index_html();
  puts(rendered_template);
  free(rendered_template);
}
