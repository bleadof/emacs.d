;; Stolen from https://github.com/cemerick/.emacs.d#nyan-mode

(require 'nyan-mode)

(defun toggle-nyan-mode (&optional frame)
  (if (display-graphic-p frame)
      (nyan-mode t)
    (nyan-mode -1)))
(add-hook 'after-init-hook 'toggle-nyan-mode)
(add-hook 'after-make-frame-functions 'toggle-nyan-mode)

(provide 'nyan-mode-conf)
