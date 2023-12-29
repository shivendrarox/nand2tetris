#!/bin/bash
bash --rcfile <(echo '. ~/.bashrc; set -o allexport && source .env && set +o allexport; cd ./; ls;')

