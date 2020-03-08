cd ..
set CUDA_VISIBLE_DEVICES=7
set PARAM_SET=tiny
set DATA_TRAIN=data/train.txt
set DATA_DEV=data/dev.txt
set MODEL_DIR=checkpoint/model_%PARAM_SET%
set VOCAB_FILE=resource/vocab.txt
set BERT_CHECKPOINT=None

set BLEU_SOURCE=%DATA_DEV%
set BLEU_REF=data/BLEU_REF.txt

set TRAIN_EPOCHS=50

python transformer_main.py --data_train=%DATA_TRAIN% ^
    --data_dev=%DATA_DEV% --model_dir=%MODEL_DIR% --vocab_file=%VOCAB_FILE% ^
    --param_set=%PARAM_SET% --bleu_source=%BLEU_SOURCE% --bleu_ref=%BLEU_REF% ^
    --bert_checkpoint=%BERT_CHECKPOINT% --train_epochs=%TRAIN_EPOCHS%
