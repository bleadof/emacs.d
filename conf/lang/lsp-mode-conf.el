(use-package lsp-mode
  :ensure t
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq read-process-output-max (* 1024 1024))
  (setq lsp-keymap-prefix "C-c l")
  :commands (lsp lsp-deferred)
  :config
  (setq gc-cons-threshold 100000000)
  (lsp-enable-which-key-integration t))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :custom
  (setq lsp-ui-sideline-show-diagnostics nil)
  (setq lsp-ui-sideline-show-hover nil))


(use-package dap-mode
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(provide 'lsp-mode-conf)
