#!/bin/bash

function pullser() {
  ssh my "git --git-dir=/root/mybash/.git pull 2>&1"
}
