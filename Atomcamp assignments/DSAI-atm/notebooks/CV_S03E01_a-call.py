from ultralytics import YOLO

model_v = YOLO("yolo_models/yolo11l.pt")

src = 'vids/dha_c.mp4'


model_v.track(src, 
            persist=True, 
            verbose=False,
            # stream=True,
            # classes=[0], 
            vid_stride=5,
            show=True
        )