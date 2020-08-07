wget download vox celeb data set
wget --http-user=voxceleb1912  --http-passwd=0s42xuw6 http://www.robots.ox.ac.uk/~vgg/data/voxceleb/vox1a/vox1_dev_wav_partaa


dnn model
	different model size
python train.py --clip_duration_ms 2000 --model_architecture dnn --model_size_info 144 144 144 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 40 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\DNN\DNN1\retrain_logs --train_dir work\DNN\DNN1\training
python train.py --clip_duration_ms 2000 --model_architecture dnn --model_size_info 144 144 144 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 40 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\DNN\DNN1_1\retrain_logs --train_dir work\DNN\DNN1_1\training
python train.py --clip_duration_ms 2000 --model_architecture dnn --model_size_info 256 256 256 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 40 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\DNN\DNN2\retrain_logs --train_dir work\DNN\DNN2\training
python train.py --clip_duration_ms 2000 --model_architecture dnn --model_size_info 436 436 436 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 40 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\DNN\DNN3\retrain_logs --train_dir work\DNN\DNN3\training

cnn model
python train.py --clip_duration_ms 2000 --model_architecture cnn --model_size_info 28 10 4 1 1 30 10 4 2 1 16 128 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 20 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\CNN\CNN1\retrain_logs --train_dir work\CNN\CNN1\training
python train.py --clip_duration_ms 2000 --model_architecture cnn --model_size_info 64 10 4 1 1 48 10 4 2 1 16 128 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 20 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\CNN\CNN2\retrain_logs --train_dir work\CNN\CNN2\training
python train.py --clip_duration_ms 2000 --model_architecture cnn --model_size_info 60 10 4 1 1 76 10 4 2 1 58 128 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 20 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\CNN\CNN3\retrain_logs --train_dir work\CNN\CNN3\training

lstm model
python train.py --clip_duration_ms 2000 --model_architecture basic_lstm --model_size_info 118 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 20 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\Basic_LSTM\Basic_LSTM1\retrain_logs --train_dir work\Basic_LSTM\Basic_LSTM1\training
python train.py --clip_duration_ms 2000 --model_architecture basic_lstm --model_size_info 214 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 20 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\Basic_LSTM\Basic_LSTM2\retrain_logs --train_dir work\Basic_LSTM\Basic_LSTM2\training
python train.py --clip_duration_ms 2000 --model_architecture basic_lstm --model_size_info 344 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 20 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000 --summaries_dir work\Basic_LSTM\Basic_LSTM3\retrain_logs --train_dir work\Basic_LSTM\Basic_LSTM3\training