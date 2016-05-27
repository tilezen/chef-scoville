#!/usr/bin/env bats

@test "Scoville binary exists and is in the default path" {
  run which scoville
  [ "$status" -eq 0 ]
}
