#!/bin/bash

rm -rf target
mvn install
mvn jetty:run