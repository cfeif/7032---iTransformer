export CUDA_VISIBLE_DEVICES=3

model_name=iTransformer

# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/equity/ \
#   --data_path daily_subset.csv \
#   --model_id Equity_96_1 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len 96 \
#   --pred_len 1 \
#   --e_layers 3 \
#   --enc_in 64 \
#   --dec_in 64 \
#   --c_out 64 \
#   --des 'Exp' \
#   --d_model 512 \
#   --d_ff 512 \
#   --batch_size 16 \
#   --learning_rate 0.0005 \
#   --itr 1

# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/equity/ \
#   --data_path stock_402_nonan_industry30_stocks.csv \
#   --model_id stock_402_nonan_industry30_48_12 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len 48 \
#   --pred_len 12 \
#   --e_layers 4 \
#   --enc_in 182 \
#   --dec_in 182 \
#   --c_out 182 \
#   --des 'Exp' \
#   --d_model 512 \
#   --d_ff 512 \
#   --itr 1

  python -u run.py \
  --is_training 1 \
  --root_path ./dataset/equity/ \
  --data_path stock_596.csv \
  --model_id stock_596_21dayreturn_48_1 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 48 \
  --pred_len 1 \
  --e_layers 4 \
  --enc_in 14 \
  --dec_in 14 \
  --c_out 14 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --itr 1