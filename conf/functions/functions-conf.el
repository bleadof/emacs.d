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
  (delete-trailing-whitespace)
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

(defun delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (when filename
      (if (vc-backend filename)
          (vc-delete-file filename)
        (progn
          (delete-file filename)
          (message "Deleted file %s" filename)
          (kill-buffer))))))

(provide 'functions-conf)
