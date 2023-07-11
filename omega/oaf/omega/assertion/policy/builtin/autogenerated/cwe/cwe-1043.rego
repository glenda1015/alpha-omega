package openssf.omega.policy.autogenerated.cwe.cwe_1043

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_1043
# title: "CWE-1043: Data Element Aggregating an Excessively Large Number of Non-Primitive Elements"
# methodology: >
#   The product uses a data element that has an excessively large number of sub-elements with non-primitive data types such as structures or aggregated objects.
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
        not "cwe-1043" in assertion.predicate.content.tags
    }
}