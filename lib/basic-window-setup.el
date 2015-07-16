(defun bleadof/term ()
  (ansi-term "/bin/bash"))

(defun bleadof/basic-window-setup ()
  (interactive)
  (delete-other-windows)
  (split-window-below (- (window-height) (/ (window-height) 4)))
  (split-window-right)
  (windmove-down)
  (-dotimes 2
    (lambda (num)
      (split-window-right (- (window-width) (/ (window-width) 3)))))
  (bleadof/term)
  (-dotimes 2
    (lambda (num)
      (windmove-right)
      (bleadof/term)))
  (select-window (frame-first-window))
  (message "NOW CODE!"))

(defun bleadof/basic-window-clean ()
  (interactive)
  (select-window (frame-first-window))
  (windmove-down)
  (kill-buffer)
  (-dotimes 2
    (lambda (num)
      (windmove-right)
      (kill-buffer)))
  (select-window (frame-first-window))
  (delete-other-windows))

(provide 'bleadof/basic-window-setup)
