;;; init-rainbow-delimiters.el --- 彩虹括号显示
;;


;;; Code

(require 'rainbow-delimiters)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)


(provide 'init-rainbow-delimiters)
;;; init-rainbow-delimiters.el ends here.
