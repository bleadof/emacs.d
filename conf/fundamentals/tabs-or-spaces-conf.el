(progn
  (use-package bind-key)

  (defun use-tabs-for-indent-toggle ()
    (interactive)
    (if indent-tabs-mode
        (progn
          (setq indent-tabs-mode nil)
          (if (not (featurep 'web-mode))
              (remove-hook 'web-mode-hook 'web-mode-use-tabs))
          (message "Using spaces for indentation"))
      (progn
        (setq indent-tabs-mode t)
        (if (featurep 'web-mode)
            (add-hook 'web-mode-hook 'web-mode-use-tabs))
        (message "Using tabs for indentation"))))

  (bind-key "C-c C-<tab>" 'use-tabs-for-indent-toggle))

(provide 'tabs-or-spaces-conf)
