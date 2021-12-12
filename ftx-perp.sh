#!/bin/bash
curl https://ftx.com/api/markets | jq -r '.result[].name' | grep -v "/" | grep -v "BTC-MOVE" | sed 's/-//' | sed 's/^/FTX:/'
