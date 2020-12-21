#!/bin/bash

sed -i "s|localhost|$MONGODB|"  /opt/conda/lib/python3.8/site-packages/QUANTAXIS/QAUtil/QASetting.py
jupyter lab --allow-root  --notebook-dir=~ &
cd ~/QADESK_BASIC && python -m http.server 80