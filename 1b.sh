#!/bin/bash
tr 0-9 $1 < digitos > digitosaux
cp digitosaux digitos
rm digitosaux
