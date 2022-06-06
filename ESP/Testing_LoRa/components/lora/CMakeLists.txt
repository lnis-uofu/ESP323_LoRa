set(priv_require)
list(APPEND priv_require "driver" "soc")

idf_component_register(
SRCS "lora.c"
INCLUDE_DIRS "include"
PRIV_REQUIRES ${priv_require}
)