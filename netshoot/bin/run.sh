#!/usr/bin/env sh
GREEN='\033[1;32m'
NC='\033[0m'
COUNT=${POD_TIMEOUT}

echo -e "${GREEN}NETSHOOT container has been started and will be terminated in ${COUNT} minutes${NC}"

while [ $COUNT != 0 ]; do
  echo $(date) - run.sh script is running. Remaining minutes: $COUNT
  let COUNT=$COUNT-1
  sleep 60
done

echo -e "${GREEN}NETSHOOT container has left the building!!!${NC}"
exit 0

