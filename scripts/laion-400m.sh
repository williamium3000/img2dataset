# img2dataset --url_list laion400m-meta --input_format "parquet"\
# 	         --url_col "URL" --caption_col "TEXT" --output_format files \
# 		 --output_folder s3://laion400m/images --processes_count 8 --thread_count 32 --image_size 256 \
# 			                 --save_additional_columns '["NSFW","similarity","LICENSE"]' --enable_wandb False

# img2dataset --url_list ./meta --input_format "parquet"\
# 	         --url_col "URL" --caption_col "TEXT" --output_format files \
# 		 --output_folder ./images --processes_count 8 --thread_count 16 --image_size 256 \
# 			                 --save_additional_columns '["NSFW","similarity","LICENSE"]' --enable_wandb False
