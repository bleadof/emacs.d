(use-package dash
  :ensure t
  :config
  (eval-after-load "dash" '(global-dash-fontify-mode)))

(use-package rainbow-delimiters
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package smartparens
  :ensure t)

(defun elisp-setup ()
  (interactive)
  (rainbow-delimiters-mode)
  (flycheck-mode)
  (smartparens-mode))

(add-hook 'emacs-lisp-mode-hook 'elisp-setup)

(provide 'elisp-lang-conf)
