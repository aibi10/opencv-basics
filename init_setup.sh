echo [$(date)]: "START"
echo [$(date)]: "creating environment"
conda create -n opencvbasics python=3.7 -y
echo [$(date)]: "activate environment"
source activate opencvbasics
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "install PyTorch"
conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch -y
echo [$(date)]: "END"
conda env export > conda.yaml
echo [$(date)]: "END"