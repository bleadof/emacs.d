(setq conf-dir
      (expand-file-name "conf" user-emacs-directory))

(add-to-list 'load-path conf-dir)

(require 'remove-menubar)
