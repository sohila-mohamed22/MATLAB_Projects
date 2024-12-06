# 🚀 USB Protocol Emulator 📊

Welcome to the **USB Protocol Emulator**, a MATLAB-based program designed to simulate USB protocol data transformations. This project processes and manipulates data matrices to emulate key behaviors of USB communication protocols. Below is a detailed guide to help you understand, set up, and use this emulator effectively.

---

## 📋 Project Overview

The **USB Protocol Emulator** performs the following **five key operations** on a matrix to simulate USB protocol behavior:
1. **Data Shifting and Initialization**: Reorganizes data by shifting and initializing specific values.
2. **Bitstream Modulation**: Updates sequences to simulate alternating signal patterns.
3. **Error Detection and Correction**: Detects patterns in the data and makes corrections accordingly.
4. **Packet Framing**: Inserts padding bits into specific positions for alignment.
5. **Protocol Compliance**: Ensures the data length aligns with USB protocol requirements.

---

## 🛠️ Features
- **File-Based Input**: Reads data from an input file using a user-friendly file selection dialog.
- **USB Protocol Simulation**: Accurately applies transformations to emulate USB data communication.
- **Custom Output File**: Saves the processed data into a new `.txt` file for further analysis.
- **Automation**: Fully automated process requiring minimal user input.

---

## 📦 How It Works

### Step 1: File Input 📂
- The emulator prompts you to select a file (`uigetfile`). The file should contain matrix data representing raw USB protocol data.

### Step 2: USB Protocol Simulation 🧮
The emulator performs the following steps to process the input data:
1. **Data Shifting and Initialization**:
   - Rearranges the data to align with USB frame structures.
   - Initializes key fields, such as start-of-frame markers.

2. **Bitstream Modulation**:
   - Simulates the encoding of USB signal patterns by alternating bits.

3. **Error Detection and Correction**:
   - Identifies sequences that violate USB protocol rules (e.g., consecutive `1's`) and applies corrections.

4. **Packet Framing**:
   - Adds padding bits (zeros) after every 32 bits to align with USB protocol requirements.

5. **Protocol Compliance**:
   - Ensures the matrix length is extended to be divisible by 32, as required by USB specifications.

### Step 3: File Output 📝
- The transformed matrix is saved as `projectsohila3.txt` (default name) in the current directory.

---

## ✨ Example Input and Output

#### Input Matrix Example:
```plaintext
1 0 1 0 1 0 ...
```

#### Output Matrix Example (After Processing):
```plaintext
0 0 0 0 0 0 0 1 1 1 0 0 ...
```
---

## 🚀 How to Run the Emulator

1. Open MATLAB.
2. Run the script.
3. When prompted, select the input file containing the USB protocol data.
4. The emulator will process the file and save the output as `projectsohila3.txt`.

---

## 💻 Requirements

- MATLAB R2018a or later.
- Basic familiarity with MATLAB if debugging is needed.
- Properly formatted input files.

---
