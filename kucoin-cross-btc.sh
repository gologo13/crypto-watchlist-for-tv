#!/bin/bash
curl https://api.kucoin.com/api/v1/symbols | jq -r '.data[].symbol' | sed 's/-//' | grep BTC | sed 's/^/kucoin:/'
