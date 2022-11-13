;;; init-accelerate.el --- 启动加速 ---

;;
;;

;;; Code:

;; 启动期间加大内存
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'after-init-hook
            (lambda () (setq gc-cons-threshold (* 20 1024 1024)))))

(setq
  ;; 不要缩放frame.
  frame-inhibit-implied-resize t
  ;; 默认用最简单的模式
  initial-major-mode 'fundamental-mode
  ;; 不要自动启用package
  package-enable-at-startup nil
  package--init-file-ensured t)

(provide 'init-accelerate)
;;;
