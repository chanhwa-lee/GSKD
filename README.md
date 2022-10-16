# GSKD
Repository for the deep learning course (Department of Statistics, Seoul National University) final project "Growing Student Knowledge Distillation"

- Proposed novel knowledge distillation structure comprised of sequence of CNNs with increasing number of layers, transferring knowledge from
smaller to bigger networks consecutively using PyTorch in Python which resembles a student’s cumulative learning process
- Achieved 89.9% test accuracy on CIFAR‑10 dataset, improvement of 0.2% test accuracy compared to baseline ResNet26

## :file_folder: Code

### :page_facing_up: MakeResNet.ipynb
- Python code for training Baseline ResNet (8, 14, 20, 26) models working as teachers and young students

### :page_facing_up: MakeStudent.ipynb
- Python code for performing normal KD (from teacher) and reverse KD (from younger student) to train growing students

### :page_facing_up: Comparing.ipynb
- Python code for evaluating trained model and compare models

### :page_facing_up: ResultANOVA.R
- R code for conduncting ANOVA test of the difference in testing accuracies of trained models (No / Baseline (Normal) / Growing Student KD)

## :file_folder: Result

 ### :file_folder: teacher
  - Trained ResNet models without KD saved in XXX.pth.tar format
  - Used as a teacher for Growing Student networks
  
 ### :file_folder: BLKD
 - Trained ResNet models using Baseline KD (teacher -> student) only saved in XXX.pth.tar format
 
 ### :file_folder: student
  - Trained ResNet models using normal and reverse KD saved in XXX.pth.tar format
 
 ### :page_facing_up: ResNetXX XXKD.csv files
 - Organized results

For more details, refer to the final report [Presentation/(Final Report) Growing Student Knowledge Distillation_Chanhwa Lee, Seung Hoon Paik.pdf](https://github.com/chanhwa-lee/GSKD/blob/main/Presentation/(Final%20Report)%20Growing%20Student%20Knowledge%20Distillation_Chanhwa%20Lee%2C%20Seung%20Hoon%20Paik.pdf)
