model=$1
if [ $# -eq 0 ]
  then
    echo "No arguments supplied.  Using default model"
    model = "saved_models/epoch_2_Thu_May_24_11:23:13_2018_100000.0_1e+15.model.pth"
fi
echo "using model: " + $model

python neural_style/neural_style.py eval  --content-image images/content-images/terrain_input.png --model $model --output-image images/output-images/terrain_mosaic.png --cuda 0
#python neural_style/neural_style.py eval  --content-image images/content-images/terrain_input.png --model checkpoints/ckpt_epoch_1_batch_id_4000.pth --output-image images/output-images/terrain_mosaic.png --cuda 0
