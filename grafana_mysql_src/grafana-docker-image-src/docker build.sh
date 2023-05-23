#!/bin/bash
sudo docker build --build-arg "GRAFANA_VERSION=7.5.5" --build-arg "GF_INSTALL_PLUGINS=yesoreyeram-boomtable-panel" -t csap-wpt-grafana:7.5.5 .