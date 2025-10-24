
# 🔌 Microcontroller Systems Projects

![MPLAB](https://img.shields.io/badge/MPLAB-IDE-blue?logo=microchip&logoColor=white)
![Assembly](https://img.shields.io/badge/Assembly-Language-black?logo=code&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Complete-success)

A comprehensive collection of labs and projects completed for the **Microcontroller Systems** module at North-West University, South Africa. This repository explores embedded systems concepts using the PIC16F84 microcontroller, focusing on **assembly language programming**, simulation in MPLAB IDE, and hardware interfacing. The projects align with topics from computer architecture to PIC programming and provide hands-on experience with real microcontroller hardware.

---

## 📂 Repository Structure

```plaintext
microcontroller-systems-projects/
│── README.md
│── LICENSE
│── .gitignore
│
└── labs/
    ├── lab1_intro_software_development/
    ├── lab2_basic_assembly/
    ├── lab3_simple_counting/
    └── lab4_seven_segment/
````
---

## 🛠️ Tools Used

* **MPLAB IDE**: For assembly programming, debugging, and simulation.
* **PIC16F84 Microcontroller**: Target device for all labs.
* **Git**: Version control.
---

## 🔌 Hardware Setup

The **Easypic v7 development board** was used for programming and testing PIC16F84 microcontroller circuits in the practical labs.

![Easypic v7](/EasyPic_v7.jpg)

---

## 🧪 Labs Overview

* **[Lab 1: Introduction to Software Development](labs/lab1_intro_software_development/)**
  Introduction to MPLAB IDE, project creation, error handling, and basic assembly programming.

* **[Lab 2: Basic Assembly Programming](labs/lab2_basic_assembly/)**
  Programs for LED patterns (alternate and specific sequences) and arithmetic operations (e.g., 7 + 15 + 208) displayed on PORTB.

* **[Lab 3: Simple Counting Problems](labs/lab3_simple_counting/)**
  Counting programs: 0–24, 0–36 in steps of 3, and generating the 4 times table up to 45×4, simulated on PORTB.

* **[Lab 4: Seven-Segment Display](labs/lab4_seven_segment/)**
  Programs for binary counting 0–99 and 0–9 on a seven-segment display, including simulation and error analysis.


---


## 📚 Module Alignment

This repository aligns with the following module topics:

* **Introduction**: Course overview and tools setup.
* **Computer Architecture**: Foundations for microcontroller design.
* **Basic Concepts and Computer Evolution**: Historical and theoretical context.
* **Computer Function and Interconnection**: System buses relevant to PIC I/O.
* **Computer Memory & Programming Languages**: Assembly programming for PIC.
* **Multicore Processors**: Context for advanced embedded systems.
* **Embedded Systems and Microcontrollers**: Focus on PIC16F84.
* **Number Systems**: Binary operations and manipulations.
* **The PIC Family of Microcontrollers**: Hands-on PIC programming experience.
* **Intro to Operating Systems**: RTOS basics for embedded applications.

---

## 🙌 Contributing

Contributions are welcome! Feel free to fork the repository, submit issues, or create pull requests to suggest improvements or add new projects.

Follow these steps to explore and run the labs:

1. **Clone the repository**:

   ```bash
   git clone https://github.com/Lehlohonolo-Saohatse/microcontroller-systems-projects.git
   ```

2. **Navigate to the project folder**:

   ```bash
   cd microcontroller-systems-projects
   ```

3. **Install dependencies**:

   * Download and install **MPLAB IDE** from Microchip's website for compiling and simulating assembly code.
   * No additional packages are required for the basic labs.

4. **Explore the labs**:

   * Each lab folder contains assembly code files (`.asm`), a README with objectives, procedures, discussion questions, and simulation notes.
   * Open `.asm` files in MPLAB IDE, build, and simulate to verify outputs.

---

## 📝 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

*Created for ELYM 328 – Introduction to Microcontroller Systems, North-West University, September 24, 2025.*

