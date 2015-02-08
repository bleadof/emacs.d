(defun setup-osx-path ()
  "Map mac keys"
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (setq exec-path
        '("/usr/local/bin" "/usr/bin")))

(if (eq system-type 'darwin)
    (setup-osx-path))

(provide 'osx-path-conf)
