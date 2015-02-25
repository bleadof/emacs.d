(use-package org
  :config
  (setq org-log-done 'time)
  (setq org-clock-persist 'history)
  (org-clock-persistence-insinuate))

(provide 'org-conf)
