(use-package scala-mode2)
(use-package ensime
  :config (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))

(provide 'scala-lang-conf)
