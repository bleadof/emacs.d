(require 'cask "~/.cask/cask.el")
(cask-initialize)

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

(require 'appearance-conf)
(require 'keybindings-conf)
(require 'backups-conf)
(require 'sane-defaults-conf)

; Packages and features
(require 'helm-conf)
(require 'browse-kill-ring-conf)
(require 'undo-tree-conf)

