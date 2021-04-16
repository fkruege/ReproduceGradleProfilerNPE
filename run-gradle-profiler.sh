#!/bin/bash
# This script is meant to be executed by a CI server to gather performance metrics for the gradle build.
# If you want to run it locally, you must have the gradle profiler available on your path as `gradle-profiler`
# https://github.com/gradle/gradle-profiler

cd "$(dirname "$0")" # cwd to our parent directory
PROJECT_ROOT=../..

gradle-profiler \
--output-dir out \
--gradle-user-home ~/.gradle \
--benchmark \
--project-dir $PROJECT_ROOT \
--scenario-file profiler.scenarios
