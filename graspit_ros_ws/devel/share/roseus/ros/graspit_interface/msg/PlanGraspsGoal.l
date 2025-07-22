;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::PlanGraspsGoal)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'PlanGraspsGoal (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::PLANGRASPSGOAL")
  (make-package "GRASPIT_INTERFACE::PLANGRASPSGOAL"))

(in-package "ROS")
;;//! \htmlinclude PlanGraspsGoal.msg.html


(defclass graspit_interface::PlanGraspsGoal
  :super ros::object
  :slots (_graspable_body_id _planner _search_energy _search_space _search_contact _sim_ann_params _max_steps _feedback_num_steps ))

(defmethod graspit_interface::PlanGraspsGoal
  (:init
   (&key
    ((:graspable_body_id __graspable_body_id) 0)
    ((:planner __planner) (instance graspit_interface::Planner :init))
    ((:search_energy __search_energy) "")
    ((:search_space __search_space) (instance graspit_interface::SearchSpace :init))
    ((:search_contact __search_contact) (instance graspit_interface::SearchContact :init))
    ((:sim_ann_params __sim_ann_params) (instance graspit_interface::SimAnnParams :init))
    ((:max_steps __max_steps) 0)
    ((:feedback_num_steps __feedback_num_steps) 0)
    )
   (send-super :init)
   (setq _graspable_body_id (round __graspable_body_id))
   (setq _planner __planner)
   (setq _search_energy (string __search_energy))
   (setq _search_space __search_space)
   (setq _search_contact __search_contact)
   (setq _sim_ann_params __sim_ann_params)
   (setq _max_steps (round __max_steps))
   (setq _feedback_num_steps (round __feedback_num_steps))
   self)
  (:graspable_body_id
   (&optional __graspable_body_id)
   (if __graspable_body_id (setq _graspable_body_id __graspable_body_id)) _graspable_body_id)
  (:planner
   (&rest __planner)
   (if (keywordp (car __planner))
       (send* _planner __planner)
     (progn
       (if __planner (setq _planner (car __planner)))
       _planner)))
  (:search_energy
   (&optional __search_energy)
   (if __search_energy (setq _search_energy __search_energy)) _search_energy)
  (:search_space
   (&rest __search_space)
   (if (keywordp (car __search_space))
       (send* _search_space __search_space)
     (progn
       (if __search_space (setq _search_space (car __search_space)))
       _search_space)))
  (:search_contact
   (&rest __search_contact)
   (if (keywordp (car __search_contact))
       (send* _search_contact __search_contact)
     (progn
       (if __search_contact (setq _search_contact (car __search_contact)))
       _search_contact)))
  (:sim_ann_params
   (&rest __sim_ann_params)
   (if (keywordp (car __sim_ann_params))
       (send* _sim_ann_params __sim_ann_params)
     (progn
       (if __sim_ann_params (setq _sim_ann_params (car __sim_ann_params)))
       _sim_ann_params)))
  (:max_steps
   (&optional __max_steps)
   (if __max_steps (setq _max_steps __max_steps)) _max_steps)
  (:feedback_num_steps
   (&optional __feedback_num_steps)
   (if __feedback_num_steps (setq _feedback_num_steps __feedback_num_steps)) _feedback_num_steps)
  (:serialization-length
   ()
   (+
    ;; int32 _graspable_body_id
    4
    ;; graspit_interface/Planner _planner
    (send _planner :serialization-length)
    ;; string _search_energy
    4 (length _search_energy)
    ;; graspit_interface/SearchSpace _search_space
    (send _search_space :serialization-length)
    ;; graspit_interface/SearchContact _search_contact
    (send _search_contact :serialization-length)
    ;; graspit_interface/SimAnnParams _sim_ann_params
    (send _sim_ann_params :serialization-length)
    ;; int32 _max_steps
    4
    ;; int32 _feedback_num_steps
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _graspable_body_id
       (write-long _graspable_body_id s)
     ;; graspit_interface/Planner _planner
       (send _planner :serialize s)
     ;; string _search_energy
       (write-long (length _search_energy) s) (princ _search_energy s)
     ;; graspit_interface/SearchSpace _search_space
       (send _search_space :serialize s)
     ;; graspit_interface/SearchContact _search_contact
       (send _search_contact :serialize s)
     ;; graspit_interface/SimAnnParams _sim_ann_params
       (send _sim_ann_params :serialize s)
     ;; int32 _max_steps
       (write-long _max_steps s)
     ;; int32 _feedback_num_steps
       (write-long _feedback_num_steps s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _graspable_body_id
     (setq _graspable_body_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; graspit_interface/Planner _planner
     (send _planner :deserialize buf ptr-) (incf ptr- (send _planner :serialization-length))
   ;; string _search_energy
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _search_energy (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; graspit_interface/SearchSpace _search_space
     (send _search_space :deserialize buf ptr-) (incf ptr- (send _search_space :serialization-length))
   ;; graspit_interface/SearchContact _search_contact
     (send _search_contact :deserialize buf ptr-) (incf ptr- (send _search_contact :serialization-length))
   ;; graspit_interface/SimAnnParams _sim_ann_params
     (send _sim_ann_params :deserialize buf ptr-) (incf ptr- (send _sim_ann_params :serialization-length))
   ;; int32 _max_steps
     (setq _max_steps (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _feedback_num_steps
     (setq _feedback_num_steps (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get graspit_interface::PlanGraspsGoal :md5sum-) "18f1b3ccd1d8b357cb312d3a46fdb7ac")
(setf (get graspit_interface::PlanGraspsGoal :datatype-) "graspit_interface/PlanGraspsGoal")
(setf (get graspit_interface::PlanGraspsGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Goal
int32 graspable_body_id

Planner planner
string search_energy
SearchSpace search_space
SearchContact search_contact
SimAnnParams sim_ann_params

int32 max_steps
int32 feedback_num_steps

================================================================================
MSG: graspit_interface/Planner
uint8 SIM_ANN                      = 0
uint8 MULTI_THREADED               = 1

uint8 type
================================================================================
MSG: graspit_interface/SearchSpace
uint8 SPACE_AXIS_ANGLE    = 0
uint8 SPACE_COMPLETE      = 1
uint8 SPACE_ELLIPSOID     = 2
uint8 SPACE_APPROACH      = 3

uint8 type
================================================================================
MSG: graspit_interface/SearchContact
uint8 CONTACT_PRESET    = 0
uint8 CONTACT_LIVE      = 1

uint8 type	
================================================================================
MSG: graspit_interface/SimAnnParams

# flag to switch to custom params defined in this message. If not set, GraspIt's default settings are kept
bool set_custom_params


# //Annealing parameters
# //! Annealing constant for neighbor generation schedule
float64 YC	 	#	GraspIt! default: 7.0
# //! Annealing constant for error acceptance schedule
float64 HC	 	#	GraspIt! default: 7.0
# //! Number of dimensions for neighbor generation schedule
float64 YDIMS	#	GraspIt! default: 8.0
# //! Number of dimensions for error acceptance schedule
float64 HDIMS	#	GraspIt! default: 8.0
# //! Adjust factor for neighbor generation schedule
float64 NBR_ADJ	#	GraspIt! default: 1.0
# //! Adjust raw errors reported by states to be in the relevant range of the annealing schedule
float64 ERR_ADJ	#	GraspIt! default: 1.0e-6
# //! Starting temperatue
float64 DEF_T0	#	GraspIt! default: 1e6
# //! Starting step
float64 DEF_K0	#	GraspIt! default: 30000
")



(provide :graspit_interface/PlanGraspsGoal "18f1b3ccd1d8b357cb312d3a46fdb7ac")


