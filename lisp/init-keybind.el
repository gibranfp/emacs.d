;;=============== Expand region =========
(global-set-key (kbd "C-=") 'er/expand-region)

;;=============== hippie expand =========
(global-set-key (kbd "M-/") 'hippie-expand)

;;=========== Kill whole line and newline character =========
(global-set-key (kbd "C-q") 'kill-whole-line)

;;=========== Comment and uncomment region/line =========
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region-or-line)

;; =============== Duplicate lines ========================;
(global-set-key (kbd "C-c d") 'duplicate-line)  

;; ============== Windmove bindings =================
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;;=============== Multiple Cursors bindings =========
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; =================== SMEX ====================
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; =================== Ace jump ====================
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; =================== Helm ====================
(global-set-key (kbd "C-c C-f") 'helm-projectile)
(global-set-key (kbd "C-c f") 'helm-for-files)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
(global-set-key (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "C-c C-f") 'helm-find-files)
(global-set-key (kbd "C-c b") 'helm-mini)
(global-set-key (kbd "C-c k") 'helm-show-kill-ring)
(global-set-key (kbd "C-c M-x") 'helm-M-x)

;; =================== iedit ====================
(global-set-key (kbd "C-c i") 'iedit-mode)

;; =================== flycheck tip ====================
(global-set-key (kbd "C-c C-n") 'flycheck-tip-cycle)

;; =================== Newline ====================
(global-set-key (kbd "M-RET") 'sanityinc/newline-at-end-of-line)

;; ============= ibuffer ================
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; ============= Jump to definition ================
(global-set-key (kbd "C-x C-j") 'semantic-ia-fast-jump)

;; ============= Newline and indent ================
(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'init-keybind)
