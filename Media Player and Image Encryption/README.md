# 🎵 Media Player and Image Encryption using MATLAB GUI

This project combines a **media player** with image manipulation capabilities, including **image encryption**. The tool is implemented using MATLAB's **GUIDE** framework, offering a user-friendly graphical interface to manage audio files and perform basic image processing and encryption.

---

## 📋 Project Overview

The **Media Player and Image Encryption GUI** provides:
- A **media player** to play, pause, and stop audio files.
- Image manipulation features, including:
  - Converting images to grayscale.
  - Converting images to black-and-white (binary).
  - Applying **salt-and-pepper noise encryption**.

This GUI is perfect for beginners learning MATLAB GUI programming or for those looking to explore media and image processing concepts.

---

## 🛠️ Features

### 🎶 Media Player:
- **Load Audio Files**: Browse and select audio files.
- **Playback Control**:
  - Play, pause, resume, and stop audio.
  - Play encrypted versions of audio.

### 🖼️ Image Processing:
- **Load Images**: Browse and select images for processing.
- **Image Transformations**:
  - Convert to grayscale.
  - Convert to binary (black-and-white).
- **Image Encryption**:
  - Apply salt-and-pepper noise for encryption.

---

## ✨ Example Usage

### Media Player:
1. **Load an Audio File**: Click on the **Audio** button and select an audio file.
2. **Playback Control**: Use the options under the original or encrypted audio menu to play, pause, resume, or stop the audio.

### Image Processing:
1. **Load an Image**: Click on **Choose Image** and select an image file.
2. **View Original Image**: Click on **Original Image** to display the image.
3. **Transform or Encrypt**:
   - Click **Gray** to display the grayscale version.
   - Click **Black-and-White** to convert the image to binary.
   - Click **Encrypted Image** to apply salt-and-pepper noise.

---

## 🚀 How to Run the GUI

### Prerequisites
- MATLAB (R2018a or later recommended).

### Steps:
1. Clone or download this repository.
2. Open MATLAB.
3. Run the `project1.m` file.
4. The **Media Player and Image Encryption GUI** will launch. Use the buttons to interact with the media player and image processing features.

---

## 🖥️ Interface Overview

### GUI Layout

The GUI consists of the following sections:

1. **Media Player Section**:
   - **Audio Buttons**: Buttons to load and control playback of audio files.
   - **Original and Encrypted Playback Options**: Toggle between original and encrypted audio.
   - **Audio Control Dropdowns**: Controls for playing, pausing, and stopping both the original and encrypted audio.

2. **Image Processing Section**:
   - **Image Buttons**: Buttons to load images, view the original, convert to grayscale, and apply salt-and-pepper encryption.
   - **Image Display Area**: The GUI displays images in different stages (original, grayscale, binary, encrypted) based on user selections.

3. **Display Axes**:
   - **Original Image**: Shows the loaded image.
   - **Grayscale Image**: Displays the image in grayscale.
   - **Binary Image**: Displays the image in black-and-white (binary).
   - **Encrypted Image**: Displays the image with salt-and-pepper noise encryption.

---

## 📂 File Structure

- **project1.m**: Main MATLAB file containing the GUI logic and functionality.
- **project1.fig**: GUI layout created using MATLAB's GUIDE.
- **Audio Files**: (Optional) Add sample `.wav` files for testing.
- **Image Files**: (Optional) Add sample images for testing.

---

## 💻 Requirements

- MATLAB R2018a or later.
- Supported audio file formats: `.wav`.
- Supported image file formats: `.jpg`, `.png`, `.bmp`.

---

## 🔑 Key Features Recap
- Media player with encrypted playback capabilities. 🎵
- Intuitive image processing and encryption tools. 🖼️
- User-friendly MATLAB GUI interface. 🌟

---

## 🖼️ GUI Interface Preview

Here’s a preview of the main **Media Player and Image Encryption GUI**:

![Screenshot 2024-12-06 195734](https://github.com/user-attachments/assets/9404583d-75d6-4e2d-b8ff-c45639f7dc45)

The image shows the GUI interface with:
- **Audio control** at the top for playing and managing audio files.
- **Image controls** on the left side for loading and processing images.
- **Display areas** at the bottom to show the images in different processing stages (original, grayscale, binary, encrypted).

**Note:** Replace the `path/to/your/gui_screenshot.png` with the actual path to a screenshot of your GUI if you wish to provide a visual of the interface.

---

**Thank you for using the Media Player and Image Encryption GUI!** 😊

