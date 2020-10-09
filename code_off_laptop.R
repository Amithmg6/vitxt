
# Libraries:
library(magick)
library(tesseract)
library(av)
# library(stringr)

# set the path here
folder_path = "C:/Users/amith.gurumallapal/vitxt/Spatial Analysis with sf and raster in R/"
setwd(folder_path)
# READ THE VIDEO FILE
video_file=list.files(folder_path,pattern = ".mp4")
# test1=magick::image_read_video(file.choose())
vilen=length(video_file)



test1=magick::image_read_video(video_file[1])

# pick the right frame
test1[1]
# test1[20]
# test1[2]
img_to_text=test1[1]

# convert the frame to text
img_to_text_complete=magick::image_ocr(img_to_text,language = "eng")
img_to_text_complete

# clean the text before saving 
new_video_name=gsub(pattern = "\n",replacement = "",img_to_text_complete)
new_video_name=gsub("[[:punct:]]", "",new_video_name)
new_video_name

video_file
## just renaming the values
old_video_name=paste0(folder_path,video_file[1])#"C:/Users/kotre/OneDrive/Documents/vitxt/ARIMA Models in R/",

# old_video_name=paste0(getwd(),"/",)
old_video_name

final_video_name=paste0(folder_path,new_video_name,".mp4")#"C:/Users/kotre/OneDrive/Documents/vitxt/ARIMA Models in R/",

final_video_name

# copy from old files to new files
file.rename(from = old_video_name, to = final_video_name)



# 
# for (i in 1:vilen) {
#   test1=magick::image_read_video(video_file[i])
#   
#   # pick the right frame
#   test1[1]
#   # test1[20]
#   # test1[2]
#   img_to_text=test1[1]
#   
#   # convert the frame to text
#   img_to_text_complete=magick::image_ocr(img_to_text,language = "eng")
#   img_to_text_complete
#   
#   # clean the text before saving 
#   new_video_name=gsub(pattern = "\n",replacement = "",img_to_text_complete)
#   new_video_name=gsub("[[:punct:]]", "",new_video_name)
#   new_video_name
#   
#   video_file
#   ## just renaming the values
#   old_video_name=paste0(folder_path,video_file[i])#"C:/Users/kotre/OneDrive/Documents/vitxt/ARIMA Models in R/",
#   
#   # old_video_name=paste0(getwd(),"/",)
#   old_video_name
#   
#   final_video_name=paste0(folder_path,new_video_name,".mp4")#"C:/Users/kotre/OneDrive/Documents/vitxt/ARIMA Models in R/",
#   
#   
#   final_video_name
#   
#   # copy from old files to new files
#   file.rename(from = old_video_name, to = final_video_name)
#   
# }
