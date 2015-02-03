(setq conf-dir
      (expand-file-name "conf" user-emacs-directory))

(add-to-list 'load-path conf-dir)

(require 'remove-menubar)
(require 'packages-conf)
(require 'mac-keys-conf)
(require 'backups-conf)
(require 'sane-defaults-conf)
(require 'helm-conf)
