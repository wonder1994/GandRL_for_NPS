DISK_PATH=/datadrive/NPS/
python eval_cmd.py --model_weights $DISK_PATH/exps/beamrl_finetune/Weights/best.model \
            \
            --vocabulary $DISK_PATH/data/1m_6ex_karel/new_vocab.vocab \
            --dataset $DISK_PATH/data/1m_6ex_karel/test.json \
            --eval_nb_ios 5 \
            --eval_batch_size 8 \
            --output_path $DISK_PATH/exps/beamrl_finetune/Results/TestSet_ \
            \
            --beam_size 64 \
            --top_k 10 \
            --use_grammar \
            \
            --use_cuda