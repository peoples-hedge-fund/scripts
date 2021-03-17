# You can use any branch but this article been tested with 0.1.2 only
git clone https://github.com/gclouduniverse/gcp-notebook-executor.git --branch v0.1.2 

cd gcp-notebook-executor
source utils.sh

INPUT_NOTEBOOK="gs://quantamental-data/Fundamental/Corporate_Bankruptcy_Prediction.ipynb"
# Should be existing bucket
GCP_BUCKET="gs://quantamental-data"
IMAGE_FAMILY_NAME="tf-latest-cpu"
INSTANCE_TYPE="n1-highmem-8"
ZONE="us-west1-b"

execute_notebook -i "${INPUT_NOTEBOOK}" \
                 -o "${GCP_BUCKET}" \
                 -f "${IMAGE_FAMILY_NAME}" \
                 -t "${INSTANCE_TYPE}" \
                 -z "${ZONE}"