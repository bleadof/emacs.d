(use-package cyberpunk-theme
  :ensure t
  :config
  (load-theme 'cyberpunk t)
  (custom-theme-set-faces
   'cyberpunk
   '(magit-section-highlight
     ((t (:background "#4f4f4f"
          :foreground "#d3d3d3"))))
   '(mode-line
     ((t (:foreground "#4c83ff"
          :background "#333333"
          :box (:line-width -1 :color "#000000")))))
   '(mode-line-inactive
     ((t (:foreground "#4D4D4D"
          :background "#1A1A1A"
          :box (:line-width -1 :color "#000000")))))))

(provide 'theme-conf)
