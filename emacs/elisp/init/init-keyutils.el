(defun a-custom-create-new-buffer-frame-A ()
  "Create a new frame with a new empty buffer."
  (interactive)
  (let ((buffer (generate-new-buffer "untitled")))
    (set-buffer-major-mode buffer)
    (display-buffer buffer '(display-buffer-pop-up-frame . nil))))

(defun a-custom-create-new-buffer-frame-B ()
  "Open a new frame with a buffer named untitled<N>.

The buffer is not associated with a file."
  (interactive)
  (switch-to-buffer-other-frame (generate-new-buffer "untitled")))

(provide 'init-keyutils)
