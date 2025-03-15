(fset 'paste-align-equals-copy
      (lambda (&optional arg)
        "Keyboard macro."
        (interactive "p")
        (kmacro-exec-ring-item
         (quote ([return 1 67108896 25 24 24 134217848 97 108 105 103 110 45 114 101 103 101 120 112 return 61 return 24 24 134217847] 0 "%d")) arg)))

(defun macro--string-to-vector (str)
  "Converts a string to a vector of its characters."
  (vconcat (mapcar 'string-to-char (split-string str "" t))))

(provide 'bleadof-macros)
