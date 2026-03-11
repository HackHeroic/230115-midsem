# Data README

## Dataset used in Part B notebooks

Question 2 and Question 3 now use the **same dataset flow as `reproduction.ipynb`**:
- Hedau indoor layout ground-truth package (downloaded from the paper-era source URL in notebook code).
- Same `load_groundtruth_with_images(...)` loading logic and semantic mapping (`FLOOR/WALL/CEILING`).

## How data is obtained

- Dataset is downloaded by the notebook function `download_hedau_groundtruth(...)` into `partB/data/hedau/`.
- If files already exist locally, download is skipped.
- Train/test split follows the same approach as in `reproduction.ipynb` (`n_train=209`, `n_test=105` by default).

## How data is used per notebook

- `task 2 1.ipynb`: same dataset loading pipeline + sample/statistics check.
- `task 2 2.ipynb`: same reproduction code path (feature extraction, SVM appearance model, hypotheses, volumetric filtering, inference).
- `task 2 3.ipynb`: full evaluation and comparison note using same data/code path.
- `task 3 1.ipynb`: ablations on the same pipeline.
- `task 3 2.ipynb`: failure-mode test on the same pipeline.

## Reproducibility notes

- Run from `partB/` so relative paths resolve correctly.
- Install dependencies from `partB/requirements.txt`.
- Result figures are saved in `partB/results/`.
