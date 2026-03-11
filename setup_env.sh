#!/bin/bash
# NIPS 2010 Room Layout Reproduction - Environment Setup
# Creates conda environment for Lee et al. "Estimating Spatial Layout of Rooms" paper reproduction

set -e

# Detect conda installation and source activation script
if [ -n "$CONDA_PREFIX" ]; then
    echo "Conda already active: $CONDA_PREFIX"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        source "$HOME/miniconda3/etc/profile.d/conda.sh"
    elif [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        source "$HOME/anaconda3/etc/profile.d/conda.sh"
    elif [ -f "/opt/conda/etc/profile.d/conda.sh" ]; then
        source /opt/conda/etc/profile.d/conda.sh
    else
        echo "Error: Could not find conda. Please ensure conda is installed and in PATH."
        exit 1
    fi
fi

# Create conda environment
echo "Creating conda environment 'room_layout' with Python 3.11..."
conda create -n room_layout python=3.11 -y

# Activate environment
conda activate room_layout

# Install dependencies
echo "Installing dependencies..."
conda install -y numpy scikit-learn scikit-image matplotlib jupyter
pip install opencv-python scipy requests

echo ""
echo "Setup complete! Activate the environment with:"
echo "  conda activate room_layout"
echo ""
echo "Then run the reproduction notebook:"
echo "  jupyter notebook reproduction.ipynb"
