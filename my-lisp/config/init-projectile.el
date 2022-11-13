;;; init-projectile.el --- projectile init ---

;;

;;; Code:

(require 'projectile)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)


(message "---init-projectile---")

(provide 'init-projectile)
;;; init-projectile.el ends here.
