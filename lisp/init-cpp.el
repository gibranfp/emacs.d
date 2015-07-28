;;; init-cpp.el --- "Initialization for C/C++ modes"

;;; Code:
;; cpputils-cmake settings
(setq cppcm-write-flymake-makefile nil)
(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))

;; Hooks to irony
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; Some irony settings
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

(defun my/c-common-mode-hook ()
  ;; ede
  (ede-mode 1)
  ;; ede projects
  (ede-cpp-root-project "smh" :file "~/Dropbox/projects/Search-MinHashing/src/mhcmd.c"
			:include-path '("../include"))

  ;; semantic
  (semantic-mode 1)
  (global-semanticdb-minor-mode 1)
  (global-semantic-idle-scheduler-mode 1)
  (global-semantic-idle-summary-mode 1)
  (add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode))
(add-hook 'c++-mode-hook 'my/c-common-mode-hook)
(add-hook 'c-mode-hook 'my/c-common-mode-hook)
(add-hook 'objc-mode-hook 'my/c-common-mode-hook)

;; K&R C style
(setq c-default-style "k&r")

(provide 'init-cpp)
;;; init-cpp.el ends here
