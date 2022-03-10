DATA_DIR=dataset

MODEL_NAME=IterE
DATASET_NAME=WN18RR-sparse
DATA_PATH=$DATA_DIR/$DATASET_NAME
LITMODEL_NAME=IterELitModel
MAX_EPOCHS=380
EMB_DIM=200
LOSS=IterE_Loss
ADV_TEMP=1.0
TRAIN_BS=1024
NUM_NEG=256
MARGIN=1
LEARNING_RATE=1e-3
REGULARIZATION=1e-5
CHECK_PER_EPOCH=1
EARLY_STOP_PATIENCE=200
GPU=1

MAX_ENTIALMENTS=10000
AXIOM_WEIGHT=0.1
AXIOM_PROBABILITY=0.9


CUDA_VISIBLE_DEVICES=$GPU python -W ignore -u main.py \
    --model_name $MODEL_NAME \
    --dataset_name $DATASET_NAME \
    --data_path $DATA_PATH \
    --litmodel_name $LITMODEL_NAME \
    --max_epochs $MAX_EPOCHS \
    --emb_dim $EMB_DIM \
    --loss_name $LOSS \
    --adv_temp $ADV_TEMP \
    --train_bs $TRAIN_BS \
    --num_neg $NUM_NEG \
    --margin $MARGIN \
    --lr $LEARNING_RATE \
    --regularization $REGULARIZATION \
    --check_per_epoch $CHECK_PER_EPOCH \
    --early_stop_patience $EARLY_STOP_PATIENCE
    --max_entialments $MAX_ENTIALMENTS \
    --axiom_weight $AXIOM_WEIGHT \
    --select_probability $AXIOM_PROBABILITY \
    --use_wandb \
    --save_config \

