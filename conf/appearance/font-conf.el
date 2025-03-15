(if (fboundp 'mac-auto-operator-composition-mode)
    (mac-auto-operator-composition-mode))

(defun bleadof/set-font (font-name font-size)
  "Set FONT-NAME and FONT-SIZE."
  (if (find-font (font-spec :name font-name))
      (progn
        (set-frame-font (format "%s %s" font-name font-size) nil t)
        (message (format "%s size %s is now your font. 🎉" font-name font-size)))
    (message (format "Unable to find font %s 😢" font-name))))

(bleadof/set-font "Hasklug Nerd Font Mono" "15")

(provide 'font-conf)
