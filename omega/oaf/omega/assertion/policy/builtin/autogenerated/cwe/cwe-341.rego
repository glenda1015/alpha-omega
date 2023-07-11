package openssf.omega.policy.autogenerated.cwe.cwe_341

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_341
# title: "CWE-341: Predictable from Observable State"
# methodology: >
#   A number or object is predictable based on observations that the attacker can make about the state of the system or network, such as time, process ID, etc.
# version: 0.1.0
# last_updated:
#   date: 2023-05-25
#   author: Michael Scovetta <michael.scovetta@gmail.com>
# ---

import future.keywords.every
import future.keywords.in

default pass = false
default applies = false

# Identify whether this policy applies to a given data object
applies := true {
    input.predicate.generator.name == "openssf.omega.security_tool_finding"
    input.predicateType == "https://github.com/ossf/alpha-omega/security_tool_finding/0.1.0"
    input.predicate.content.tags
}

pass := true {
    every assertion in input {
        not "cwe-341" in assertion.predicate.content.tags
    }
}