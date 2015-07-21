;; ============= IDO fast file matching ============
(ido-mode t)
(ido-ubiquitous-mode t)
(ido-everywhere t)
(flx-ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; ============= Ace jump ============
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "ace jump back"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))

;; ========== Uniquify =================
(toggle-uniquify-buffer-names t)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

(setq-default indent-tabs-mode nil)
(setq-default tab-width 3)

;; ============ Helm ================
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t
      helm-M-x-fuzzy-match t)
(setq helm-locate-command 
      (cl-case system-type
        (gnu/linux "locate %s -e -A --regex %s")))

;; ============ Projectile ================
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(provide 'init-nav)
