;; Auto-generated. Do not edit!


(when (boundp 'ardrone_as::ArdroneGoal)
  (if (not (find-package "ARDRONE_AS"))
    (make-package "ARDRONE_AS"))
  (shadow 'ArdroneGoal (find-package "ARDRONE_AS")))
(unless (find-package "ARDRONE_AS::ARDRONEGOAL")
  (make-package "ARDRONE_AS::ARDRONEGOAL"))

(in-package "ROS")
;;//! \htmlinclude ArdroneGoal.msg.html


(defclass ardrone_as::ArdroneGoal
  :super ros::object
  :slots (_nseconds ))

(defmethod ardrone_as::ArdroneGoal
  (:init
   (&key
    ((:nseconds __nseconds) 0)
    )
   (send-super :init)
   (setq _nseconds (round __nseconds))
   self)
  (:nseconds
   (&optional __nseconds)
   (if __nseconds (setq _nseconds __nseconds)) _nseconds)
  (:serialization-length
   ()
   (+
    ;; int32 _nseconds
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _nseconds
       (write-long _nseconds s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _nseconds
     (setq _nseconds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ardrone_as::ArdroneGoal :md5sum-) "1d1469fb31a40224ea7d41afb312d107")
(setf (get ardrone_as::ArdroneGoal :datatype-) "ardrone_as/ArdroneGoal")
(setf (get ardrone_as::ArdroneGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal for the drone
int32 nseconds  # the number of seconds the drone will be taking pictures


")



(provide :ardrone_as/ArdroneGoal "1d1469fb31a40224ea7d41afb312d107")


