// Copyright 2020 Google LLC
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

#ifndef PHST_RULES_ELISP_EMACS_RANDOM_H
#define PHST_RULES_ELISP_EMACS_RANDOM_H

#include <memory>
#include <string>

namespace phst_rules_elisp {

class random {
 public:
  random();
  ~random();
  random(const random&) = delete;
  random& operator=(const random&) = delete;

  std::string temp_name();

 private:
  struct impl;
  std::unique_ptr<impl> impl_;
};

}  // namespace phst_rules_elisp

#endif
