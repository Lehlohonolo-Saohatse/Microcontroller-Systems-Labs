# 🔌 ELYM 328 – Introduction to Microcontroller Systems Projects

![MPLAB](https://img.shields.io/badge/MPLAB-IDE-blue?logo=microchip&logoColor=white)
![Assembly](https://img.shields.io/badge/Assembly-Language-black?logo=code&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-success)
![License](https://img.shields.io/badge/License-MIT-green)

A collection of labs and projects completed for the  
**ELYM 328 – Introduction to Microcontroller Systems** module at North-West University, South Africa.

This repository explores embedded systems concepts using the PIC16F84 microcontroller through **assembly language** programming, simulations in MPLAB IDE, and hardware interfacing, aligned with topics from computer architecture to PIC programming.

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
```

## 🚀 Getting Started
1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/microcontroller-systems-projects.git
   ```
2. **Navigate to the project folder**:
   ```bash
   cd microcontroller-systems-projects
   ```
3. **Install dependencies**:
   - Download and install **MPLAB IDE** from Microchip's website for compiling and simulating assembly code.
   - No additional packages needed for basic labs.

4. **Explore the labs**:
   - Each lab folder contains assembly code (.asm), README with objectives, procedures, discussion questions, and simulation notes.
   - Open .asm files in MPLAB IDE, build, and simulate to verify outputs.

## 🧪 Labs Overview
- **[Lab 1: Introduction to Software Development](labs/lab1_intro_software_development/)**  
  Tutorial on using MPLAB IDE for PIC16F84, covering project creation, error fixing, and basic assembly concepts.

- **[Lab 2: Basic Assembly Programming](labs/lab2_basic_assembly/)**  
  Programs to light LED patterns (alternate and specific sequences) and perform addition (7 + 15 + 208), displayed on PORTB.

- **[Lab 3: Simple Counting Problems](labs/lab3_simple_counting/)**  
  Assembly programs for counting from 0-24, 0-36 in steps of 3, and generating the 4 times table up to 45*4, simulated on PORTB.

- **[Lab 4: Seven-Segment Display](labs/lab4_seven_segment/)**  
  Programs to count 0-99 (binary) and 0-9 (on seven-segment display) connected to PORTB, with simulation and error analysis.

## 🛠️ Tools Used
- **MPLAB IDE**: For assembly programming, debugging, and simulation.
- **PIC16F84 Microcontroller**: Target device for all labs.
- **Git**: For version control.

## 📚 Module Outline Alignment
This repository supports the following module topics:
- **Intro**: Course overview and tools setup.
- **Computer Architecture**: Foundation for microcontroller design.
- **Basic Concepts and Computer Evolution**: Understanding historical context.
- **Chapter 3 (Computer Function and Interconnection)**: System buses relevant to PIC I/O.
- **Computer Memory & Programming Languages**: Assembly for PIC.
- **Multicore Processors**: Advanced context for future embedded systems.
- **Introduction to Embedded Systems and the Microcontroller**: PIC16F84 focus.
- **Number Systems**: Binary operations in assembly.
- **The PIC Family of Micro-controllers**: Hands-on PIC programming.
- **Intro to Operating Systems**: RTOS basics for embedded applications.

## 📝 License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## 🙌 Contributing
Feel free to fork this repository, submit issues, or create pull requests to suggest improvements or add new projects.

---

*Created for ELYM 328 – Introduction to Microcontroller Systems, North-West University, September 24, 2025.*
