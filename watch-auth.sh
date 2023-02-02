#!/bin/bash

while true
do
    curl -LI https://auth.the-form.io -o /dev/null -w '%{http_code}\n' -s
    sleep 1s
done
