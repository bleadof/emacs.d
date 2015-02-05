(setq conf-dir
      (expand-file-name "conf" user-emacs-directory))
(setq lib-dir
      (expand-file-name "lib" user-emacs-directory))

(add-to-list 'load-path lib-dir)

(let ((default-directory lib-dir))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'load-path conf-dir)

(require 'remove-menubar)
(require 'packages-conf)
(require 'mac-keys-conf)
(require 'general-key-bindings)
(require 'backups-conf)
(require 'sane-defaults-conf)

; Packages and features
(require 'helm-conf)
(require 'browse-kill-ring-conf)
(require 'undo-tree-conf)
