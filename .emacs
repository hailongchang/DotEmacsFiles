(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; (require 'package)
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages"))
;; (package-initialize)

;;设置启动时自动最大化
(setq initial-frame-alist
      `((left . 0) (top . 0)
        (width . 237) (height . 65)))

;;关闭出错时的蜂鸣声
(setq visible-bell t)

;;进行语法加亮显示
(global-font-lock-mode t)

;;显示行号
;(setq line-number-mode t)

;;显示列号
(setq column-number-mode t)

;;设置自动显示图片
(auto-image-file-mode)

;;设置标题栏
(setq frame-title-format "%b - GNU Emacs for novice (hailongchang165210@gmail.com)")

;;跳到某一行绑定到c-x i
(global-set-key "\C-xi" 'goto-line)

;;高亮显示选定的块
(transient-mark-mode t)

;;关闭工具条，0表示关闭
(tool-bar-mode 0)

;;关闭菜单栏，0表示关闭
(menu-bar-mode 0)

;;关闭启动画面
(setq inhibit-startup-message t)

;;括号匹配时显示另一边的括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;光标靠近鼠标指针时，鼠标指针自动让开
(mouse-avoidance-mode 'animate)

;;使用行号模式
(global-linum-mode t)

;display time
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;display cursor-type as 'bar
(setq-default cursor-type 'bar)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(global-set-key [(control ?h)] 'delete-backward-char)
;;将区块注释功能绑定到M-y键上,同时将取消注释绑定到M-u上
(global-set-key (kbd "M-y") 'comment-region)
(global-set-key (kbd "M-u") 'uncomment-region)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'tabbar)
(tabbar-mode)
(global-set-key (kbd "M--") 'tabbar-backward-group)
(global-set-key (kbd "M-=") 'tabbar-forward-group)
(global-set-key (kbd "M-1") 'tabbar-backward-tab)
(global-set-key (kbd "M-2") 'tabbar-forward-tab)
;; 设置tabbar外观  
;; 设置默认主题: 字体, 背景和前景颜色，大小  
(set-face-attribute 'tabbar-default nil  
		    :family "DejaVu Sans Mono"  
		    :background "gray80"  
		    :foreground "gray30"  
		    :height 1.0  
                    )  
;; 设置左边按钮外观：外框框边大小和颜色  
(set-face-attribute 'tabbar-button nil  
                    :inherit 'tabbar-default  
                    :box '(:line-width 1 :color "yellow70")  
                    )

;; 设置当前tab外观：颜色，字体，外框大小和颜色  
(set-face-attribute 'tabbar-selected nil  
                    :inherit 'tabbar-default  
                    :foreground "DarkGreen"  
                    :background "LightGoldenrod"  
		    :box '(:line-width 2 :color "DarkGoldenrod")  
                    :overline "black"  
                    :underline "black"  
                    :weight 'bold  
                   )  
;; 设置非当前tab外观：外框大小和颜色  
(set-face-attribute 'tabbar-unselected nil  
                    :inherit 'tabbar-default  
		    :box '(:line-width 2 :color "#00B2BF")  
                   ) 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;设置主题色彩，字体
(load-theme 'misterioso)
(set-cursor-color "#ff1493")
;;设置选中区域的前景色和背景色
(set-face-attribute 'region nil :background "#666" :foreground "orange")

(set-default-font "-*-Monaco-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'go-mode)(add-hook 'before-save-hook 'gofmt-before-save)
;;
;;
;;设置备份选项
(setq
    backup-by-copying t ;自动备份
    backup-directory-alist
    '(("." . "~/.saves")) ;自动备份在目录"~/.saves"下
    delete-old-versions t ;自动删除旧的备份文件
    kept-new-versions 6 ;保留最近的6个备份文件
    kept-old-versions 2 ;保留最早的2个备份文件
    version-control t) ;

;; C-x C-+ 增大字体的快捷键
;; C-x C-- 减小字体的快捷键
;;M-x customize-themes 显示可用主题
;;load-theme 载入字体

