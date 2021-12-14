(message "loading conf/path-conf")
(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(provide 'path-conf)
