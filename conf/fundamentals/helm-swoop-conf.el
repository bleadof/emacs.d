(req-package helm-swoop
  :require helm
  :bind ("C-s-s" . helm-swoop)
  :init
  (bind-key "M-i" 'helm-swoop-from-isearch isearch-mode-map))

(provide 'helm-swoop-conf)
