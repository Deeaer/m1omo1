#!/bin/sh
if [ ! -f UUID ]; then
  UUID="dc59a480-c5a8-4533-805b-c5beb1416efc"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

