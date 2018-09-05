#!/bin/sh

sleep 5

conky -c ~/.config/conky/conkyrc0 &
conky -c ~/.config/conky/conkyrc1 &
conky -c ~/.config/conky/conkyrc2 &
 
exit

