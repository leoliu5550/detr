training from strcah
python main.py --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --output_dir exp2 --device cuda:1

training from pretrain
python main.py --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --output_dir exp --batch_size 1 --resume weight 


python main.py --epochs 100 --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --device cuda:1 --output_dir exp3 --batch_size 1 --resume weight/detr-r101-dc5-a2e86def.pth --enc_layers 3 --dec_layers 1

python main.py --epochs 100 --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --device cuda:1 --output_dir exp4 --batch_size 1 --resume weight/detr-r101-dc5-a2e86def.pth --enc_layers 3 --dec_layers 3


python main.py --epochs 100 --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --device cuda:0 --output_dir exp5 --batch_size 1 --enc_layers 3 --dec_layers 3

python main.py --epochs 100 --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --device cuda:1 --output_dir exp6 --batch_size 1 --resume weight/detr-r101-dc5-a2e86def.pth --enc_layers 1 --dec_layers 5


python main.py --epochs 100 --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --device cuda:0 --output_dir exp7 --batch_size 1 --resume weight/detr-r101-dc5-a2e86def.pth --enc_layers 0 --dec_layers 6

python main.py --epochs 200 --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --device cuda:1 --output_dir exp8 --batch_size 1 --resume weight/detr-r101-dc5-a2e86def.pth --enc_layers 1 --dec_layers 5

python main.py --epochs 200 --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --device cuda:0 --output_dir exp9 --batch_size 1 --resume weight/detr-r101-dc5-a2e86def.pth --enc_layers 1 --dec_layers 5

python main.py --epochs 300 --dataset_file neu --data_path "/data/lcliu/neudet_coco/" --device cuda:1 --output_dir exp10 --batch_size 4 --resume exp10/checkpoint0199.pth

python main.py --epochs 600 --dataset_file neu --data_path "/data/lcliu/neudet_coco2/" --device cuda:1 --output_dir coco2exp1 --batch_size 4 --backbone resnet50

# resume from coco2exp1 400 finish
python main.py --epochs 600 --dataset_file neu --data_path "/data/lcliu/neudet_coco2/" --device cuda:1 --output_dir coco2exp1res --batch_size 4 --resume coco2exp1/checkpoint0399.pth