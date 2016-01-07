(req-package org
  :config
  (setq org-log-done 'time)
  (setq org-clock-persist 'history)
  (org-clock-persistence-insinuate))

(req-package org-inline-image
  :bind
  (("M-s-i" . org-inline-image)
   ("M-s-h" . org-inline-image-hide)))

(provide 'org-conf)
