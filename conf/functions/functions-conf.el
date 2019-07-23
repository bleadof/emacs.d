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

(defun indent-all ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)q
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(defun prettier-format-file ()
  (interactive)
  (if (buffer-modified-p)
      (message "Save all unsaved changges before running prettier")
    (progn
      (shell-command (format "npx prettier --write %s" (buffer-file-name)))
      (revert-buffer nil t))))

(defun format-file ()
  (interactive)
  (indent-all))

(provide 'functions-conf)
