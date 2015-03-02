(use-package mutiple-cursors
  :bind (("C-s-c C-s-c" . mc/mark-next-like-this)
         ("C->"         . mc/mark-next-like-this)
         ("C-<"         . mc/mark-previous-like-this)
         ("C-c C-<"     . mc/mark-all-like-this)))

(provide 'multiple-cursors-conf)
