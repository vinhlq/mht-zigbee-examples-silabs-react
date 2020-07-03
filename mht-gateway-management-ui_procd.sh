#!/bin/sh /etc/rc.common

USE_PROCD=1
START=99
STOP=01              

start_service() {
    procd_open_instance
    procd_set_param command /bin/sh "/root/mht-zigbee-examples-silabs-react/run.sh"
    procd_close_instance
}
