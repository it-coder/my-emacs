;;; init-tree-sitter.el --- init tree sitter ---
;;
;;; Code:

(require 'tree-sitter)
(require 'tree-sitter-hl)
(require 'tree-sitter-langs)
(require 'tree-sitter-debug)
(require 'tree-sitter-query)

(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; Add Emacs-Lisp for tree-sitter:
;;
;; 1. git clone https://github.com/Wilfred/tree-sitter-elisp.git
;; 2. cd src
;; 3. gcc ./parser.c -fPIC -I./ --shared -o elisp.so
;; 4. cp ./elisp.so ~/.tree-sitter-langs/bin (~/.tree-sitter-langs/bin is path of your tree-sitter-langs repo)
;; 将so文件copy到tree-sitter下的langs/bin目录
(tree-sitter-load 'elisp)
(add-to-list 'tree-sitter-major-mode-language-alist '(emacs-lisp-mode . elisp))
(add-to-list 'tree-sitter-major-mode-language-alist '(inferior-emacs-lisp-mode . elisp))

;; Add Vue for tree-sitter:
;;
;; 1. git clone https://github.com/ikatyang/tree-sitter-vue.git
;; 2. cd src
;; 3. g++ ./src/parser.c ./src/scanner.cc -fPIC -I./ --shared -o vue.so
;; 4. cp ./vue.so ~/.tree-sitter-langs/bin (~/.tree-sitter-langs/bin 是tree-sitter库下的langs/bin)
(tree-sitter-load 'vue)
(add-to-list 'tree-sitter-major-mode-language-alist '(web-mode . vue))

;; Add Typescript for tree-sitter.
;;
;; 1. git clone https://github.com/tree-sitter/tree-sitter-typescript.git
;; 2. cd  tsx/src/ 
;; 3. gcc ./tsx/src/parser.c ./tsx/src/scanner.cc -fPIC -I./ --shared -o typescript.so
;; 4. cp ./typescript.so ~/.tree-sitter-langs/bin (~/.tree-sitter-langs/bin is path of your tree-sitter-langs repo)
(tree-sitter-load 'typescript)
(add-to-list 'tree-sitter-major-mode-language-alist '(typescript-mode . typescript))

(provide 'init-tree-sitter)
;;; init-tree-sitter.el ends here.
