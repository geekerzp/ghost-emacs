;;; Code:

(global-set-key (kbd "<f11>") 'xah-previous-user-buffer)
(global-set-key (kbd "<f12>") 'xah-next-user-buffer)
(global-set-key (kbd "<S-f11>") 'xah-previous-emacs-buffer)
(global-set-key (kbd "<S-f12>") 'xah-next-emacs-buffer)

;; ack-and-a-half
(global-set-key (kbd "C-c a") 'ack)

;; project-explorer
(global-set-key (kbd "s-s") 'project-explorer-open)
(global-set-key (kbd "s-f") 'project-explorer-helm)

(global-set-key (kbd "M-l") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "M-p") 'evilnc-comment-or-uncomment-paragraphs)

;; easy-kill && easy-mark
(global-set-key [remap kill-ring-save] 'easy-kill)
(global-set-key [remap mark-sexp] 'easy-mark)

(global-set-key (kbd "M-x") 'helm-M-x)

(defun slime-repl-mode-custom-key ()
  (progn (define-key slime-repl-mode-map (kbd "<down>") 'slime-repl-forward-input)
         (define-key slime-repl-mode-map (kbd "<up>") 'slime-repl-backward-input)))
(add-hook 'slime-repl-mode-hook 'slime-repl-mode-custom-key)

(provide 'global-keybindings)
