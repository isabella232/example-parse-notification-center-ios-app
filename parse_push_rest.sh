#!/bin/sh

res=$(curl -X POST \
  -H "X-Parse-Application-Id: COPYPASTE-APP-ID-HERE" \
  -H "X-Parse-REST-API-Key: COPYPASTE-REST-API-KEY-HERE" \
  -H "Content-Type: application/json" \
  -d '{
        "where": {
          "deviceType": "ios"
        },
        "data": {
          "alert": "Your suitcase has been filled with tiny apples!"
        }
      }' \
  https://api.parse.com/1/push)

echo " --- Result ---"
echo "$res"
echo " --------------"