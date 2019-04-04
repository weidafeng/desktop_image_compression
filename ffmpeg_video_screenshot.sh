echo "使用说明： sh ffmpeg_video_screenshot.sh video_data  "
# [tristan@itss desktop]$ tree -L 1
# .
# ├── dataset  存放截图
# ├── ffmpeg_video_screenshot.sh
# └── video_data #存放视频
# 
# $1 指定第一个输入
# 每隔2s截图一张（最多1000张）
# -i 指定输入视频路径
# -y 覆盖之前重名图像保存
# -f 输出为图像
# -r 0.5 指定每秒保存0.5张，即2秒保存一张
# -vframs 最多1000张（若不指定-r，则直接保存100张）
# 最后是保存路径
for i in `ls $1`;do ffmpeg -i video_data/$i -y -f image2 -r 0.5 -vframes 1000  "./dataset/$i-%03d.png";done;
