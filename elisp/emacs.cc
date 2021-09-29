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

#include "elisp/emacs.h"

#include <cstdlib>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
#pragma GCC diagnostic ignored "-Wconversion"
#pragma GCC diagnostic ignored "-Wsign-conversion"
#pragma GCC diagnostic ignored "-Woverflow"
#include "absl/status/status.h"
#include "absl/status/statusor.h"
#include "absl/strings/str_cat.h"
#pragma GCC diagnostic pop

#include "elisp/process.h"
#include "elisp/status.h"

namespace phst_rules_elisp {

static absl::StatusOr<int> RunEmacsImpl(const EmacsOptions& opts) {
  const auto orig_env = CopyEnv();
  ASSIGN_OR_RETURN(const auto runfiles, CreateRunfiles(opts.argv.at(0)));
  ASSIGN_OR_RETURN(const auto program,
                   Runfile(*runfiles, "phst_rules_elisp/elisp/emacs_py"));
  std::vector<std::string> args = {
      absl::StrCat("--install=" + opts.install_rel),
  };
  switch (opts.dump_mode) {
    case DumpMode::kPortable:
      args.push_back("--dump-mode=portable");
      break;
    case DumpMode::kUnexec:
      args.push_back("--dump-mode=unexec");
      break;
  }
  args.push_back("--");
  args.push_back(opts.argv.at(0));
  Environment map;
  return Run(opts, orig_env, *runfiles, program, args, map);
}

int RunEmacs(const EmacsOptions& opts) {
  const auto status_or_code = RunEmacsImpl(opts);
  if (!status_or_code.ok()) {
    std::clog << status_or_code.status() << std::endl;
    return EXIT_FAILURE;
  }
  return status_or_code.value();
}

}  // namespace phst_rules_elisp