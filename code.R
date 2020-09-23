
# Libraries:
library(magick)
library(tesseract)
library(av)

# READ THE VIDEO FILE
video_file=list.files(pattern = ".mp4")
test1=magick::image_read_video(video_file[2])

# pick the right frame
test1[1]
test1[20]
test1[2]
img_to_text=test1[1]

# convert the frame to text
img_to_text_complete=magick::image_ocr(img_to_text,language = "eng")
img_to_text_complete

# clean the text before saving 
new_video_name=gsub(pattern = "\n",replacement = "",img_to_text_complete)
new_video_name

video_file
## just renaming the values
old_video_name=paste0("C:/Users/kotre/OneDrive/Documents/vitxt/ARIMA Models in R/",
                      video_file[2])

old_video_name

final_video_name=paste0("C:/Users/kotre/OneDrive/Documents/vitxt/ARIMA Models in R/",
                      new_video_name,".mp4")
  
final_video_name

# copy from old files to new files
file.rename(from = old_video_name, to = final_video_name)

# save the new/renamed video file
# getwd()
# magick::image_write_video(test1,paste0(new_video_name,".mp4"))
# magick::image_write(test1, path = paste0(new_video_name,".mp4"), format = "mp4")
