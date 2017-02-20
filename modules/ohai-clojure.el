;;; -*- lexical-binding: t -*-
;;; ohai-clojure.el --- If you like your parentheses Java flavoured.

;; Copyright (C) 2015 Bodil Stokke

;; Author: Bodil Stokke <bodil@bodil.org>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(use-package clojure-mode
  :commands clojure-mode
  :config
  ;; Setup
  (add-hook
   'clojure-mode-hook
   (lambda ()
     (paredit-mode 1)
     (clj-refactor-mode 1)

     (use-package inf-clojure)

     (use-package clj-refactor
       :commands clj-refactor-mode
       :config
       ;; Define the keybinding prefix for clj-refactor commands.
       ;; From there, see https://github.com/clojure-emacs/clj-refactor.el#usage
       (cljr-add-keybindings-with-prefix "C-c C-m")))))

;; We might need Paredit too if that's how you like it.
(use-package paredit
  :commands paredit-mode
  :diminish paredit-mode)

(provide 'ohai-clojure)
;;; ohai-clojure.el ends here
