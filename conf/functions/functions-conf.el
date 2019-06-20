;; Stolen from Eeli

(defun point-at-indentation ()
  "Return non-nil if point is at indentation, nil otherwise."
  (= (save-excursion (back-to-indentation) (point)) (point)))

(defun beginning-of-line-or-indentation ()
  "Toggle between beginning of line and point of indentation."
  (interactive)
  (if (point-at-indentation)
      (beginning-of-line)
    (back-to-indentation)))

(provide 'functions-conf)
