# `Checkbox Classifier Neural Network`

This project is an attempt at creating a neural network for classification of images with various types of checkboxes.
The neural network should tell us wether the checkbox is checked, unchecked or not a checkbox.

Data which is going to be used to create the network is provided in the repo as well as the parameters of the trained model.

### Prerequisites

It is recommended to use Docker to try this project:

Follow the installation guide for your system on the [Docker website](https://docs.docker.com/get-docker/).

### Installation

A step by step series of examples that tell you how to get a development environment running.

1. **Clone the repository**

   Start by cloning this repository to your local machine.

   ```sh
   git clone git@github.com:Ivanes1/checkbox-nn.git
   cd checkbox-nn
   ```

2. **Build the Docker image**

   Build the Docker image using the following command. This will set up the environment with all necessary dependencies.

   ```sh
   docker build -t checkbox-nn-image .
   ```

   This might take a few minutes as it needs to download the base image and install all required libraries.

3. **Run the Docker container**

   Once the image is built, start the container:

   ```sh
   docker run -p 8888:8888 --name checkbox-nn-container checkbox-nn-image
   ```

   This command starts the Jupyter Notebook server and maps it to port 8888 on your host.

4. **Access Jupyter Notebook**

   After starting the container, you should see a URL in the terminal output. Copy this URL and paste it into your web browser to access Jupyter Notebook.

   Example:

   ```
   http://127.0.0.1:8888/?token=<token>
   ```

### Usage

The project consists of two main notebooks:

- **`training.ipynb`**: This is the notebook where the model is being trained (data preparation, model design, training, testing, analysis).
- **`inference.ipynb`**: This is the notebook where you can try the model on your own image
  - NOTE: don't forget to upload your image to the same folder as the notebook, you can do this in three different ways:
  1.  Use the Jupyter Lab UI (click `Upload Files`)
  2.  Copy it to the Docker container manually: `docker cp /path/to/the/image.png checkbox-nn-container:/home/jovyan/work/image.png`
  3.  Put it into the folder prior to building the image, so it would be copied there along with the other files

## Contributing

Feel free to contribute to the project!
