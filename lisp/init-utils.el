;;=============== Autopair ================
(eval-after-load "autopair-autoloads"
  '(progn
     (autopair-global-mode 1)
     (setq autopair-autowrap t)))

;;  ============ Shows pairing brackets =================
(show-paren-mode 1)

;; ============ Shows matching paren in echo area =================
(defadvice show-paren-function
  (after show-matching-paren-offscreen activate)
  "If the matching paren is offscreen, show the matching line in the
        echo area. Has no effect if the character before point is not of
        the syntax class ')'."
  (interactive)
  (let* ((cb (char-before (point)))
	 (matching-text (and cb
			     (char-equal (char-syntax cb) ?\) )
			     (blink-matching-open))))
    (when matching-text (message matching-text))))

;; ============== yasnippet ========================
(eval-after-load "yasnippet-autoloads"
  '(progn
     (yas-global-mode 1)
))
(add-hook 'prog-mode-hook
	  '(lambda ()
	     (yas-minor-mode)))

;; ========= Delete the current file (from github@purcell/emacs.d) =========
(defun delete-this-file ()
  "Delete the current file, and kill the buffer."
  (interactive)
  (or (buffer-file-name) (error "No file is currently being edited"))
  (when (yes-or-no-p (format "Really delete '%s'?"
                             (file-name-nondirectory buffer-file-name)))
    (delete-file (buffer-file-name))
    (kill-this-buffer)))

;; ========= Rename the current file (from github@purcell/emacs.d) ==========
(defun rename-this-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "New name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (unless filename
      (error "Buffer '%s' is not visiting a file!" name))
    (if (get-buffer new-name)
        (message "A buffer named '%s' already exists!" new-name)
      (progn
        (when (file-exists-p filename)
         (rename-file filename new-name 1))
        (rename-buffer new-name)
        (set-visited-file-name new-name)))))

(provide 'init-utils)
