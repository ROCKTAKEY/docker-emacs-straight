(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.milkbox.net/packages/"))
(define-key key-translation-map (kbd "C-h") (kbd "DEL"))


;; Code below is licensed by MIT License of raxod502.
;;  See also README.
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el"
                         user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
