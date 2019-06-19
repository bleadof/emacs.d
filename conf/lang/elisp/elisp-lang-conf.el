(req-package dash
  :config
  (progn
    (eval-after-load "dash" '(dash-enable-font-lock))))

(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

(provide 'elisp-lang-conf)
