(progn
  (setq backup-directory-alist `(("." . ,(concat user-emacs-directory
					    "backups")))))

(provide 'backups-conf)
