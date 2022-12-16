#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3c0d5033-ed44-4725-83c3-733375e3482e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

