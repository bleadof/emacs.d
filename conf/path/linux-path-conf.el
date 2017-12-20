(when (eq system-type 'gnu/linux)
  (req-package exec-path-from-shell
    :config
    (progn
      (exec-path-from-shell-initialize))))

(provide 'linux-path-conf)
