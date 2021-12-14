(use-package org
  :config
  (setq org-src-tab-acts-natively t)
  (setq org-log-done 'time)
  (setq org-clock-persist 'history)
  (org-clock-persistence-insinuate))

(use-package org-inline-image
  :ensure nil
  :bind
  (("M-s-i" . org-inline-image)
   ("M-s-h" . org-inline-image-hide)))

(provide 'org-conf)
