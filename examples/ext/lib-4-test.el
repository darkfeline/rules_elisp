;;; lib-4-test.el --- unit tests for lib-4 -*- lexical-binding: t; -*-

;; Copyright 2021, 2024 Google LLC
;;
;; Licensed under the Apache License, Version 2.0 (the "License");
;; you may not use this file except in compliance with the License.
;; You may obtain a copy of the License at
;;
;;     https://www.apache.org/licenses/LICENSE-2.0
;;
;; Unless required by applicable law or agreed to in writing, software
;; distributed under the License is distributed on an "AS IS" BASIS,
;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;; See the License for the specific language governing permissions and
;; limitations under the License.

;;; Commentary:

;; Unit tests for example library in an external repository.

;;; Code:

(require 'lib-4)

(ert-deftest lib-4-func ()
  (lib-4-func))

;;; lib-4-test.el ends here
