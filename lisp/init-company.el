;; ========= Company ==========
(global-company-mode t)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

;; ============= Company irony ===============================
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;; ============= Company C Headers ===============================
(require 'company-c-headers)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-c-headers))


(provide 'init-company)
