(req-package dictionary
  :bind
  (("H-M-d" . dictionary-search)
   ("H-M-m" . dictionary-match-words))
  :config
  (progn
    (setq dictionary-server "localhost")
    (global-dictionary-tooltip-mode 1)))

(provide 'dictionary-conf)
