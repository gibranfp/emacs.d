;;; init-helm-projectile.el --- Settings for Helm and projectile

;;; Code:
;; Helm settings
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t
      helm-M-x-fuzzy-match t)
(setq helm-locate-command 
      (cl-case system-type
        (gnu/linux "locate %s -e -A --regex %s")))

;; Projectile settings
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(provide 'init-helm-projectile)
;;; init-helm-projectile.el ends here
