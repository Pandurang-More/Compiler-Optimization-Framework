# Compiler Optimization Framework (LLVM/GCC Toolchain)

## 📌 Overview
The Compiler Optimization Framework is a system-level performance analysis project designed to evaluate and compare compiler
optimization techniques using GCC and Clang toolchains. The project analyzes optimization effects on compute-intensive workloads 
by inspecting assembly output, LLVM Intermediate Representation (IR), and benchmarking execution performance.

This framework demonstrates practical understanding of compiler internals, optimization passes, and performance tuning techniques.

---

## 🎯 Objectives
- Evaluate different compiler optimization levels (O0, O1, O2, O3)
- Analyze generated assembly code
- Study LLVM Intermediate Representation (IR)
- Automate benchmarking workflows
- Understand architecture-aware compilation behavior

---

## 🛠️ Tech Stack
- **Languages:** C++, Python
- **Compilers:** GCC, Clang
- **Tools:** Linux, LLVM Toolchain, Perf Benchmarking
- **Automation:** Python subprocess module

```

## 📂 Project Structure
Compiler-Optimization-Framework
│
├── test_programs/
│ └── matrix_multiply.cpp
│
├── analyzer/
│ └── auto_benchmark.py
│
├── results/
│ ├── assembly_analysis.txt
│ ├── llvm_analysis.txt
│ └── matrix.ll
│
├── README.md
└── main.py


```

## ⚙️ Features

### 🔹 Compiler Optimization Comparison
- Compiled workloads using multiple optimization levels
- Compared execution performance across optimization flags
- Demonstrated performance improvements with higher optimization levels

---

### 🔹 Assembly Code Analysis
- Generated assembly using GCC optimization flags
- Compared instruction-level differences between optimized and non-optimized builds
- Studied loop transformations and instruction reduction techniques

---

### 🔹 LLVM IR Analysis
- Generated LLVM Intermediate Representation using Clang
- Observed compiler transformation pipeline before machine code generation
- Analyzed instruction simplification and optimization pass behavior

---

### 🔹 Automated Benchmarking
- Developed Python automation script to execute compiled binaries
- Automated execution time measurement
- Simplified comparative performance analysis

---

## 📊 Benchmark Example

| Optimization Level | Execution Time |
|--------------------|--------------|
| O0 | Highest |
| O1 | Improved |
| O2 | Significant Improvement |
| O3 | Near Optimal |

---

## ▶️ How To Run

### Step 1: Compile Program
g++ test_programs/matrix_multiply.cpp -O3 -o O3_exec


### Step 2: Run Benchmark Automation


python3 analyzer/auto_benchmark.py


---

## 🧠 Learning Outcomes
- Understanding compiler optimization techniques
- Assembly and IR-level program analysis
- Performance benchmarking methodologies
- Linux-based development workflow
- Automation for performance evaluation

---

## 🚀 Future Improvements
- Integration with hardware performance counters
- Visualization dashboards for benchmark results
- Support for multiple workload benchmarks
- Compiler optimization recommendation system

---

## 👨‍💻 Author
**Pandurang More**


