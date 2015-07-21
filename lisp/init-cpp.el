;; ============== Folding ======================
(add-hook 'c-mode-common-hook   'hs-minor-mode)

;; ============== EDE =========================
(global-ede-mode 1)
(ede-cpp-root-project "general" :file "~/Dropbox/projects/Sampled-MinHashing/src/smh/smhcmd.c"
                      :include-path '("../../include"))

;; ================ CEDET Semantic ===========================
;; Use for jump to definition and stickyfunc
(semantic-mode 1)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-idle-summary-mode 1)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)

;; ============= Irony =====================================
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(defun my-c-mode-setup ()
  "C/C++ only setup"
  
  (flymake-mode 1)
  (if (executable-find "cmake")
      (if (not (or (string-match "^/usr/local/include/.*" buffer-file-name)
                   (string-match "^/usr/src/linux/include/.*" buffer-file-name)))
          (cppcm-reload-all))))

(add-hook 'c++-mode-hook 'my-c-mode-setup)
(add-hook 'c-mode-hook 'my-c-mode-setup)

(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

;; ============= K&R C style =====================================
(setq c-default-style "k&r")

(provide 'init-cpp)
