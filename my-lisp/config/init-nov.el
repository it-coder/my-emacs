;;; mov.el --- epub mode ----

;;

;;; Code:

(require 'nov)

(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(setq nov-text-width 80)

(setq visual-fill-column-center-text t)
(add-hook 'nov-mode-hook 'visual-line-mode)
(add-hook 'nov-mode-hook 'visual-fill-column-mode)

(provide 'init-nov)
;;; nov.el ends here.
