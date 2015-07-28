;;; init-ui.el --- Settings for user interface

;;; Code:
;; Avoids backup files
(setq make-backup-files nil)

;; Line and column numbering in mode-line
(line-number-mode 1)
(column-number-mode 1)

;; Removes tool, scroll and menu bars
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

;; Avoids startup messages
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-buffer-menu t)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message nil)
(add-hook 'emacs-startup-hook 'delete-other-windows)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Color theme when starting as daemon
(if (daemonp)
    (add-hook 'after-make-frame-functions
              (lambda (frame)
                (select-frame frame)
                (load-theme 'tango-dark t)

                (powerline-default-theme)
                (custom-set-faces
                 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
                 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

                (set-cursor-color "#ff4b4b")
                (custom-set-faces
                 '(semantic-highlight-func-current-tag-face
                   ((((type tty)) nil)
                    (((class color) (background dark))
                     (:background "DarkGreen"))))))))

;; Color theme for GUI
(if window-system
    (progn
      (load-theme 'tango-dark t)

      (powerline-default-theme)
      (custom-set-faces
                 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
                 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
                
      (set-cursor-color "#ff4b4b")
      (custom-set-faces
       '(semantic-highlight-func-current-tag-face
         ((((type tty)) nil)
          (((class color) (background dark))
           (:background "DarkGreen")))))))

;; Highlights current line
(global-hl-line-mode 1)

;; shows matching parentheses
(show-paren-mode 1)

;; uniquify (handles files with the same name)
(toggle-uniquify-buffer-names t)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

(provide 'init-ui)
;;; init-ui.el ends here
