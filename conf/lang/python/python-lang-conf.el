(use-package pip-requirements
  :ensure t
  :mode
  "requirements.txt"
  "requirements/\\.txt\\'")

(use-package exec-path-from-shell
  :if (memq (window-system) '(mac ns))
  :config (exec-path-from-shell-initialize))

(use-package flycheck
  :ensure t)

(use-package lsp-mode
  :ensure t)

(use-package lsp-jedi
  :ensure t
  :after lsp-mode)

(use-package lsp-pyright
  :ensure t
  :after lsp-mode)

;; (use-package dap-mode
;;   :after lsp-mode
;;   :commands dap-debug
;;   :hook ((python-mode . dap-ui-mode)
;; 	 (python-mode . dap-mode))
;;   :config
;;   (eval-when-compile
;;     (require 'cl))
;;   (require 'dap-python)
;;   (require 'dap-lldb)

;;   ;; Temporal fix
;;   (defun dap-python--pyenv-executable-find (command)
;;     (with-venv (executable-find "python")))
;;   )

(use-package poetry
  :ensure t)

(use-package python-pytest
  :ensure t)

(use-package blacken
  :ensure t
  :hook (python-mode . blacken-mode))

(use-package python-black
  :ensure t)

(use-package python-isort
  :ensure t)

;; (use-package pet
;;   :ensure t
;;   :config
;;   (add-hook 'python-mode-hook
;;             (lambda ()
;;               (setq-local python-shell-interpreter (pet-executable-find "python")
;;                           python-shell-virtualenv-root (pet-virtualenv-root))

;;               ;; (pet-eglot-setup)
;;               ;; (eglot-ensure)

;;               (pet-flycheck-setup)
;;               (flycheck-mode)

;;               (setq-local lsp-jedi-executable-command
;;                           (pet-executable-find "jedi-language-server"))

;;               (setq-local lsp-pyright-python-executable-cmd python-shell-interpreter
;;                           lsp-pyright-venv-path python-shell-virtualenv-root)

;;               (lsp)

;;               (setq-local dap-python-executable python-shell-interpreter)

;;               (setq-local python-pytest-executable (pet-executable-find "pytest"))

;;               (when-let ((black-executable (pet-executable-find "black")))
;;                 (setq-local python-black-command black-executable)
;;                 (python-black-on-save-mode))

;;               (when-let ((isort-executable (pet-executable-find "isort")))
;;                 (setq-local python-isort-command isort-executable)
;;                 (python-isort-on-save-mode)))))

(provide 'python-lang-conf)
