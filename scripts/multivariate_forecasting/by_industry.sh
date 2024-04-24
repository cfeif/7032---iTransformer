export CUDA_VISIBLE_DEVICES=3

model_name=iTransformer

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_train_path train_nofeatures_199.csv \
  --data_test_path test_nofeatures_199.csv \
  --model_id nofeatures_48_1 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 48 \
  --pred_len 1 \
  --e_layers 3 \
  --enc_in 199 \
  --dec_in 199 \
  --c_out 199 \
  --des 'Exp' \
  --d_model 128 \
  --d_ff 128 \
  --learning_rate 0.001 \
  --itr 1 \