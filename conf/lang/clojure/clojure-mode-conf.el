(req-package clojure-mode
  :init
  (progn
    (add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode)))
  :config
  (progn
    (define-clojure-indent
      ;; Compojure
      (ANY 2)
      (DELETE 2)
      (GET 2)
      (HEAD 2)
      (POST 2)
      (PUT 2)
      (context 2)
      (defroutes 'defun)
      ;; Cucumber
      (After 1)
      (Before 1)
      (Given 2)
      (Then 2)
      (When 2)
      ;; Schema
      (s/defrecord 2)
      ;; test.check
      (for-all 'defun))))

(provide 'clojure-mode-conf)
