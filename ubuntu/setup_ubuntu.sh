#!/bin/bash

# This script runs everything else and configures Ubuntu

./repos.sh
./flatpak.sh
./programs.sh

./other_programs/slack.sh
./other_programs/zoom.sh

