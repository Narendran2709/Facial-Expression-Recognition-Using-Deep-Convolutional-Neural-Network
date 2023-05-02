# Facial-Expression-Recognition-Using-Deep-Convolutional-Neural-Network
the database we have used in our project is Facial Expression Recognition 2013(FER) for training the network.
Basefile.m - The project's base file, from which all other project-related modules are called, serves as its starting point. Since we used Alexnet for our project to train images, this file calls the Alexnet module. This file also includes the graph that must be plotted; the emotion with the highest % will be selected as the output depending on the graph.
converting_image_size - the FER databse images that we used in our project for training the neural network has a dimension 48x48. as the alexnet can process images of dimension 227x227. so we are in need to resize it so to process the images.
createLgraphUsingConnections-provide graph based on the percentage of emotion detected in the image.
output file-it creates a rectangle in which the live or test image is viewed along with the emotion that is highly detected using the CNN.
