# export AWS_REQUEST_CHECKSUM_CALCULATION=when_required
# export AWS_RESPONSE_CHECKSUM_VALIDATION=when_required
# img2dataset --url_list coyo-700m/data --input_format "parquet"\
#                 --url_col "url" --caption_col "text" --output_format files \
#                       --output_folder s3://coyo-700m/data  --processes_count 16 --thread_count 16  --image_size 384\
#                       --resize_only_if_bigger=True --resize_mode="keep_ratio" --skip_reencode=True \
#                       --save_additional_columns '["clip_similarity_vitb32","clip_similarity_vitl14","nsfw_score_opennsfw2","nsfw_score_gantman","watermark_score","aesthetic_score_laion_v2"]' --enable_wandb False

export AWS_REQUEST_CHECKSUM_CALCULATION=when_required
export AWS_RESPONSE_CHECKSUM_VALIDATION=when_required
img2dataset --url_list coyo-700m/data --input_format "parquet"\
                --url_col "url" --caption_col "text" --output_format webdataset \
                      --output_folder s3://mydata/image/coyo700m/images  --processes_count 16 --thread_count 32  --image_size 384\
                      --resize_only_if_bigger=True --resize_mode="keep_ratio" --skip_reencode=True \
                      --save_additional_columns '["clip_similarity_vitb32","clip_similarity_vitl14","nsfw_score_opennsfw2","nsfw_score_gantman","watermark_score","aesthetic_score_laion_v2"]' --enable_wandb False

