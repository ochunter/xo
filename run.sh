#!/bin/bash

go1.21.1 build

rm -rf miniseries-models/*

./xo schema "mysql://<username>:<password>@localhost:13306/miniseries?parseTime=true" --out miniseries-models --go-pkg=models --go-field-tag 'json:"{{ .SQLName }}" db:"{{ .SQLName }}"' --go-context=only
