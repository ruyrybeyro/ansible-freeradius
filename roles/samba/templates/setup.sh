#!/bin/bash
sudo net rpc join -U {{user_to_add_machine}} -S {{hostname_dc}} -I {{ad_server}}
sudo sudo net ads join -U administrator
service winbind restart
