;;; init-flycheck.el --- Settings for flycheck

(add-hook 'after-init-hook 'global-flycheck-mode)

;; Override default flycheck triggers
(setq flycheck-check-syntax-automatically '(save idle-change mode-enabled)
      flycheck-idle-change-delay 0.8)

(setq flycheck-display-errors-function 'flycheck-display-error-messages-unless-error-list)
(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)

(provide 'init-flycheck)
;;; init-flycheck.el ends here
