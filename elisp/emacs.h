// Copyright 2020, 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef PHST_RULES_ELISP_ELISP_EMACS_H
#define PHST_RULES_ELISP_ELISP_EMACS_H

#include <string>

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
#pragma GCC diagnostic ignored "-Wconversion"
#pragma GCC diagnostic ignored "-Wsign-conversion"
#pragma GCC diagnostic ignored "-Woverflow"
#include "absl/base/attributes.h"
#pragma GCC diagnostic pop

#include "elisp/options.h"

namespace phst_rules_elisp {

enum class DumpMode { kPortable, kUnexec };

struct EmacsOptions : Argv {
  std::string install_rel;
  DumpMode dump_mode;
};

ABSL_MUST_USE_RESULT int RunEmacs(const EmacsOptions& opts);

}  // namespace phst_rules_elisp

#endif