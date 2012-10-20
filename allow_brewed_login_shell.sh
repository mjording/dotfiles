#!/bin/bash 
sed -ie '\/bin\/bash/i\
\/usr\/local\/bin\/bash
' /etc/shells
