#define CONFIG_STR(x) extern char *x;
#define CONFIG_INT(x) extern long x;
#include "config-vars.h"
#undef CONFIG_STR
#undef CONFIG_INT

void configure();

extern const char *config_dir;
