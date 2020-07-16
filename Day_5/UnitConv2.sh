#!/bin/bash -x
PlotInFeet=$(( 60 * 40 ));
FeetToMeters=$((1 / 3.2));
PlotInMeters=$(( $PlotInFeet * $FeetToMeters ));

