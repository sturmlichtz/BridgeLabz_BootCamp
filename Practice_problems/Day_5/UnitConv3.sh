#!/bin/bash -x
PlotInFeet=$((25*(60*40)));
FeetInAcres=$((1/43560));
PlotInAcres=$(($PoltInFeet/$FeetInAcres));
