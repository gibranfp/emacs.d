;;; init-cpp.el --- "Initialization for C/C++ modes"

;;; Code:
;; cpputils-cmake settings
(setq cppcm-write-flymake-makefile nil)
(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))
 
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
  (irony-mode t)
  
  ;; Fixes c-headers paths as cpputils-cmake writes the user path in the system path
  (setq company-c-headers-path-user company-c-headers-path-system)
  (setq company-c-headers-path-system '("/usr/include/" "/usr/local/include/"))
  
  ;; ede
  (global-ede-mode t)
  
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
