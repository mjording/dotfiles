#!/bin/bash 
sed -ie '\/bin\/bash\n/i\
\/usr\/local\/bin\/bash' /etc/shells
