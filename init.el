;(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(eval-when-compile
  (require 'use-package))

(setq conf-dir
      (expand-file-name "conf" user-emacs-directory))
(setq lib-dir
      (expand-file-name "lib" user-emacs-directory))

(add-to-list 'load-path lib-dir)

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

(require 'packages-conf)
(require 'path-conf)
(require 'appearance-conf)
(require 'keybindings-conf)
(require 'backups-conf)
(require 'sane-defaults-conf)
(require 'fundamentals-conf)
(require 'documentation-conf)

;; Packages and features
(require 'lang-confs)
(require 'web-conf)
(require 'productivity-conf)
