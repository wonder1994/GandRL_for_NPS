DISK_PATH=/datadrive/NPS/
python train_cmd.py  --signal rl \
              --environment BlackBoxGeneralization \
              --nb_rollouts 100 \
              \
              --init_weights $DISK_PATH/exps/supervised_use_grammar/Weights/best.model \
              --nb_epochs 5 \
              --optim_alg Adam \
              --learning_rate 1e-5 \
              --batch_size 16 \
              \
              --train_file $DISK_PATH/data/1m_6ex_karel/train.json \
              --val_file $DISK_PATH/data/1m_6ex_karel/val.json \
              --vocab $DISK_PATH/data/1m_6ex_karel/new_vocab.vocab \
              --result_folder $DISK_PATH/exps/reinforce_finetune \
              \
              --use_grammar \
              \
              --use_cuda