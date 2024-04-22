export CUDA_VISIBLE_DEVICES=3

model_name=iTransformer

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_train_path train_returns_200rdn.csv \
  --data_test_path test_returns_200rdn.csv \
  --model_id Exchange_48_1 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 48 \
  --pred_len 1 \
  --e_layers 3 \
  --enc_in 214 \
  --dec_in 214 \
  --c_out 214 \
  --des 'Exp' \
  --d_model 128 \
  --d_ff 128 \
  --learning_rate 0.001 \
  --itr 1 \