(use-package pretty-hydra)

(defun setup-web-mode-additions ()
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (when (string-equal "jsx" (file-name-extension buffer-file-name))
    (flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append))
  (when (or (string-equal "tsx" (file-name-extension buffer-file-name))
            (string-equal "ts" (file-name-extension buffer-file-name)))
    (setup-tide-mode))
  (when (and (string-equal "html" (file-name-extension buffer-file-name))
             (buffer-contains-substring "{%"))
    (web-mode-set-engine "django")))

(use-package tide
  :hook (web-mode-hook . setup-web-mode-additions)
  :requires (:all flycheck company eldoc pretty-hydra)
  :preface
  (defun setup-tide-mode ()
    (tide-restart-server)
    (defun tide-flycheck-setup ()
      (flycheck-add-mode 'javascript-eslint 'web-mode)
      (flycheck-mode 1)
      (flycheck-select-checker 'javascript-eslint))
    (defun tide-flycheck-set-default-dir ()
              (setq default-directory
                    (locate-dominating-file default-directory "tsconfig.json")))
    (add-hook 'flycheck-before-syntax-check-hook 'tide-flycheck-set-default-dir)
    (add-to-list 'company-dabbrev-code-modes 'tide-mode)
    (add-hook 'tide-mode-hook 'tide-flycheck-setup)
    (add-hook 'tide-mode-hook 'prettier-js-mode)
    (add-hook 'tide-mode-hook 'tide-hl-identifier-mode)
    (setq tide-always-show-documentation t
          tide-completion-detailed t))
  :pretty-hydra ((:color "#ff5d38" :quit-key "q" :title "Tide commands")
                 ("Refactor"
                  (("r" tide-refactor               "Refactor")
                   ("y" tide-rename-symbol          "Rename symbol")
                   ("f" tide-rename-symbol          "Rename file")
                   ("i" tide-organize-imports       "Organize imports"))
                  "References"
                  (("a" tide-references             "References")
                   ("d" tide-documentation-at-point "Documentation at point"))
                  "Errors"
                  (("e" tide-project-errors         "Project errors"))
                  "Misc"
                  (("s" tide-restart-server         "Restart server"))))
  :bind (:map tide-mode-map
              ("C-c t" . tide-hydra/body)))

(use-package web-mode
  :mode (("\\.js\\'" . web-mode)
         ("\\.jsx\\'" . web-mode)
         ("\\.tsx\\'" . web-mode)
         ("\\.html\\'" . web-mode)
         ("\\.ts\\'" . web-mode)
         ("\\.json\\'" . web-mode))
  :init (add-hook
         'web-mode-hook
         'setup-web-mode-additions)
  :config
  (progn
    (setq web-mode-enable-current-element-highlight t)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-attr-indent-offset nil)))

(provide 'typescript-lang-conf)
