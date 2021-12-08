(use-package dash
  :config
  (eval-after-load "dash" '(global-dash-fontify-mode)))

(defun elisp-setup ()
  (interactive)
  (rainbow-delimiters-mode)
  (flycheck-mode)
  (smartparens-mode))

(add-hook 'emacs-lisp-mode-hook 'elisp-setup)

(provide 'elisp-lang-conf)
