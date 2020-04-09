(use-package python
  :mode ("\\.py\\'" . python-mode)
  :interpreter (("python"  . python-mode)
                ("python2" . python-mode)
                ("python3" . python-mode)))

(use-package anaconda-mode
  :diminish anaconda-mode
  :after python
  :hook python-mode
  :hook (anaconda-mode-hook . anaconda-eldoc-mode))

(use-package company-anaconda
  :after (anaconda-mode company)
  :config (add-to-list 'company-backends 'company-anaconda))

(use-package pyenv-mode
  :after (python projectile)
  :hook (projectile-after-switch-project-hook . projectile-pyenv-mode-hook)
  :config
  (defun projectile-pyenv-mode-hook ()
    (let ((project (projectile-project-name)))
      (if (member project (pyenv-mode-versions))
          (pyenv-mode-set project)
        (pyenv-mode-unset)))))

(use-package pip-requirements
  :mode
  "requirements.txt"
  "requirements/\\.txt\\'")

(provide 'python-lang-conf)
