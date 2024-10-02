# Nucleomegaly Segmentation Project

## Project Overview

This project, developed for the *Laboratorio di Elaborazione di Immagini* course, focuses on segmenting and analyzing healthy cells versus those affected by nucleo-megaly. The goal is to distinguish between healthy blood cells and abnormal cells based on image processing techniques.

## Methodology

The project involves isolating the red component from a color image of blood cells and applying thresholding to differentiate healthy cells from those exhibiting nucleo-megaly. The segmentation process utilizes morphological operations to refine the boundaries of the healthy cells, and various metrics are calculated to quantify the characteristics of the segmented cells.

## Code Structure

The code is structured into several key sections:

Image Loading and Preprocessing: Load the input image and extract the red channel.

Thresholding: Apply thresholding to identify healthy cells.

Morphological Operations: Perform closure to enhance the shape of the identified cells.

Boundary Detection and Metrics Calculation: Identify cell boundaries and compute parameters such as area and eccentricity.

### Key Functions

`imread()`: Loads the input image.
`im2gray()`: Converts the image to grayscale.
`bwboundaries()`: Detects boundaries of segmented objects.
`regionprops()`: Computes properties of labeled regions, including area and eccentricity.
`strel()`: Creates a structural element for morphological operations.
`mean()`, `std()`: Calculate the mean and standard deviation of specified metrics.

## Results

The analysis resulted in:

**Mean area of healthy cells**: 1012.15 pixels; Standard deviation: 818.908 pixels.

**Mean eccentricity of healthy cells**: 0.599174; Standard deviation: 0.220923.

**Mean video intensity of healthy cells**: 10.9571; Standard deviation: 4.88858.

## Conclusions

The project successfully distinguishes healthy cells from those affected by nucleo-megaly using image processing techniques. The results provide quantitative metrics for further analysis of cell characteristics, contributing to the understanding of this pathological condition.
