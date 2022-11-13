;;; init.el --- emacs配置初始化出口 ---

;;

;;; Code:

(message "---init start---")
;; 常量
(defvar my-emacs-root-dir (file-truename "~/Documents/my-emacs/my-lisp"))


;; 加速配置
(require 'init-accelerate)

;; 启动配置项
(require 'init-startup)
;; 图标配置
(require 'init-font)
;; 自动保存
(require 'init-auto-save)
;; lazy load
(require 'lazy-load)
;; rainbow
(require 'init-rainbow-delimiters)

;; Test
(require 'init-test)
;; 主题配置
(require 'init-theme)
;; treemacs init
;(require 'init-treemacs)

;; mininbuffer setting
;(require 'init-awesome-tray)


;; project init
(require 'init-projectile)
;; undo-tree init
(require 'init-undo-tree)
;; ivy init
(require 'init-ivy)



(run-with-idle-timer
 1 nil
 #'(lambda ()
     ;; --------  编程 start
     (require 'init-mode) ;mode hook
     (require 'init-tree-sitter) ; 语法树
     ;; TODO init python
     (require 'init-python)
     ;; init web mode
     (require 'init-web-mode)
     ;;init markdown mode
     (require 'init-markdown-mode)
     ;; init lsp-bridge
     (require 'init-lsp-bridge)
     ;; init yasnippet
     (require 'init-yasnippet)
     ;; -------- 编程 end
     ;; 支持查看epub书籍文件
     (require 'init-nov)
     )
 )



(provide 'init)
;;; init.el ends here.
