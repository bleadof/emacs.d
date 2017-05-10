(req-package dash
  :config
  (progn
    (eval-after-load "dash" '(dash-enable-font-lock))))

(add-hook 'elisp-mode 'rainbow-delimiters-mode)

(provide 'elisp-conf)
