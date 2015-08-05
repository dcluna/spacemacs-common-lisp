;;; packages.el --- common-lisp Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Daniel Luna <dancluna@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar common-lisp-packages
  '(
    ;; package common-lisps go here
    sly
    sly-company
    evil-cleverparens
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar common-lisp-excluded-packages '()
  "List of packages to exclude.")

(defun common-lisp/init-sly ()
  "Initialize sly"
  (use-package sly :config
    (evil-leader/set-key-for-mode 'lisp-mode
      "mcf" 'sly-compile-file
      "mcl" 'sly-compile-and-load-file
      "mcd" 'sly-compile-defun
      "mcr" 'sly-compile-region
      "mef" 'sly-eval-file
      "med" 'sly-eval-defun
      "mer" 'sly-eval-region
      "meb" 'sly-eval-buffer
      "mee" 'sly-eval-last-expression
      "meo" 'sly-eval-last-expression-display-output
      "meu" 'sly-undefine-function
      "mep" 'sly-eval-print-last-expression
      "mda" 'sly-apropos
      "mdA" 'sly-apropos-all
      "mdp" 'sly-apropos-package
      "mdd" 'sly-documentation-lookup
      "mdf" 'sly-describe-function
      "mds" 'sly-describe-symbol
      "mx1" 'sly-expand-1
      "mxe" 'sly-macroexpand-all
      "muc" 'sly-who-calls
      "muw" 'sly-calls-who
      "mur" 'sly-who-references
      "mub" 'sly-who-binds
      "mus" 'sly-who-sets
      "muS" 'sly-who-specializes
      "mum" 'sly-who-macroexpands
      "mgg" 'sly-edit-definition
      ))
  )

(defun common-lisp/init-sly-company ()
  "Initialize sly-company"
  (use-package sly-company)
  )

(defun common-lisp/init-evil-cleverparens ()
  "Initialize evil-cleverparens"
  (use-package evil-cleverparens :config
    (add-hook 'lisp-mode-hook #'evil-cleverparens-mode))
  )

;; For each package, define a function common-lisp/init-<package-common-lisp>
;;
;; (defun common-lisp/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
