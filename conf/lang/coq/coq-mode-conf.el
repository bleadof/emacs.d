(use-package company-coq
  :init
  (require 'proof-general-conf)
  (add-hook 'coq-mode-hook #'company-coq-initialize)
  (setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist)))

(provide 'coq-mode-conf)
