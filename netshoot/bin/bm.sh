#!/bin/bash
GREEN='\033[1;32m'
RED='\033[1;31m'
NC='\033[0m'

echo -e "${RED}\nUnwanted process\n"
echo -e "${GREEN}\n"

cat /netshoot/bin/message.txt

echo -e "${NC}\n\n"
exit 0


