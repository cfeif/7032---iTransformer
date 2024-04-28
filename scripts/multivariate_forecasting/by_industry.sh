export CUDA_VISIBLE_DEVICES=0

model_name=iTransformer

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_train_path data_train_ind22.csv \
  --data_test_path data_test_ind22.csv \
  --model_id model_by_ind22 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 48 \
  --pred_len 1 \
  --e_layers 3 \
  --enc_in 350 \
  --dec_in 350 \
  --c_out 350 \
  --des 'Exp' \
  --d_model 128 \
  --d_ff 128 \
  --learning_rate 0.004 \
  --itr 1 \
  --lradj 'type4' \
  --train_epochs 20 \
  --patience 8 \