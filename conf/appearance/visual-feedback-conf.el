(global-hl-line-mode t)

(use-package beacon
  :ensure t
  :config
  (beacon-mode t))

(use-package volatile-highlights
  :ensure t
  :config
  (volatile-highlights-mode t))

(provide 'visual-feedback-conf)
