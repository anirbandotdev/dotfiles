#!/bin/bash

IMAGE=$(find ~/.config/fastfetch/images -type f | shuf -n 1)

fastfetch \
  --logo "$IMAGE"
