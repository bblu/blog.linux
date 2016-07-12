#!/bin/bash

S='hello world!'
l1=expr length $S
echo expr.len=$l1

len=${#S}
echo S.len=$len

