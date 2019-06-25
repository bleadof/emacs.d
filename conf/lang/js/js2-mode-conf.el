;;; js2-mode-conf.el --- stolen from https://github.com/magnars/.emacs.d/blob/master/settings/setup-js2-mode.el -*- lexical-binding: t; -*-
(use-package js2-mode
  :after js2-imenu-extras
  :config
  (progn
    (add-hook 'js-mode-hook 'js2-mode)

    (setq js2-missing-semi-one-line-override t)
    ;; Use 2 spaces for indent!
    (setq-default js2-basic-offset 2)

    (setq-default js2-allow-rhino-new-expr-initializer nil)
    (setq-default js2-auto-indent-p nil)
    (setq-default js2-enter-indents-newline nil)
    (setq-default js2-global-externs '("module" "require" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON"))
    (setq-default js2-idle-timer-delay 0.1)
    (setq-default js2-indent-on-enter-key nil)
    (setq-default js2-mirror-mode nil)
    (setq-default js2-strict-inconsistent-return-warning nil)
    (setq-default js2-auto-indent-p t)
    (setq-default js2-include-rhino-externs nil)
    (setq-default js2-include-gears-externs nil)
    (setq-default js2-concat-multiline-strings 'eol)
    (setq-default js2-rebind-eol-bol-keys nil)))

(provide 'js2-mode-conf)
