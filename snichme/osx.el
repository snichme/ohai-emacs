(message "SNICHME OSX")

;; Setup environment variables from the user's shell.
;; (require-package 'exec-path-from-shell)
;; (exec-path-from-shell-initialize)




;; Swedish mac-keyboard alt-keys)
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq ns-right-alternate-modifier 'none)

;; mac friendly font
;; (when window-system
;;   (setq magnars/default-font "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")
;;   (setq magnars/presentation-font "-apple-Monaco-medium-normal-normal-*-21-*-*-*-m-0-iso10646-1")
;;   (set-face-attribute 'default nil :font magnars/default-font))

;; Move to trash when deleting stuff
(setq delete-by-moving-to-trash t
      trash-directory "~/.Trash/emacs")

;; Ignore .DS_Store files with ido mode
(add-to-list 'ido-ignore-files "\\.DS_Store")

;; Don't open files from the workspace in a new frame
(setq ns-pop-up-frames nil)

;; Use aspell for spell checking: brew install aspell --lang=en
(setq ispell-program-name "/usr/local/bin/aspell")


;; Open files
(defun mac-open-current-file ()
  (interactive)
  (shell-command (concat "open " (buffer-file-name))))

(global-set-key (kbd "C-c C-o") 'mac-open-current-file)


(provide 'osx)
