;;; init.el --- loads configuration
;;; Commentary: conf loading
;;; Code:
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq custom-file (concat user-emacs-directory "/custom.el"))

(setq conf-dir
      (expand-file-name "conf" user-emacs-directory))
(setq lib-dir
      (expand-file-name "lib" user-emacs-directory))
(setq macros-dir
      (expand-file-name "macros" user-emacs-directory))

(add-to-list 'load-path lib-dir)
(add-to-list 'load-path macros-dir)

(let ((default-directory lib-dir))
  (normal-top-level-add-subdirs-to-load-path))

(let ((default-directory conf-dir))
  (setq load-path
        (append
         (let ((load-path (copy-sequence load-path))) ;; Shadow
           (append
            (copy-sequence (normal-top-level-add-to-load-path '(".")))
            (normal-top-level-add-subdirs-to-load-path)))
         load-path)))

(require 'bleadof-macros)
(require 'path-conf)
(require 'appearance-conf)
(require 'keybindings-conf)
(require 'backups-conf)
(require 'sane-defaults-conf)
(require 'fundamentals-conf)

;; Packages and features
(require 'lang-confs)
(require 'productivity-conf)
(require 'writing-conf)
