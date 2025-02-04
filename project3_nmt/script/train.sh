bash
#NGPU=0
#CUDA_VISIBLE_DEVICES=$NGPU
python train.py \
  --root data \
  --do_train \
  --evaluate_during_training \
  --lr 5.0e-5 \
  --per_gpu_train_batch_size 64 \
  --per_gpu_eval_batch_size 64 \
  --gradient_accumulation_step 1 \
  --n_epoch 10 \
  --checkpoint_dir checkpoint ;
