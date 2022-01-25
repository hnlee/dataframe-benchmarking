#!/usr/bin/env bash

FORMAT_STRING="Elapsed time: %e s\nMax resident set size: %M Kb\nAverage total memory use: %K Kb\nPercent CPU: %P\n"

echo "DataFusion"
gtime -f "$FORMAT_STRING" cargo run --quiet

echo "Pandas"
gtime -f "$FORMAT_STRING" poetry run python src/main.py
