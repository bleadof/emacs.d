(when (fboundp 'whitespace-mode)
  (progn
    (setq-default whitespace-style '(face tab-mark trailing))
    (global-whitespace-mode 1)))

(provide 'whitespace-mode-conf)
