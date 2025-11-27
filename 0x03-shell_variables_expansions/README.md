# Shell Variables & Expansions — Project README

This project explores how the shell manages variables, expansions, aliases, arithmetic, and initialization files. Each script in this directory performs a focused task that demonstrates a specific shell feature.

## 📁 Project Structure

All scripts follow these rules:

- Exactly 2 lines long
- First line: `#!/bin/bash`
- End with a new line
- No use of `&&`, `||`, or `;`
- No `bc`, `sed`, or `awk`
- Must be executable

---

## 📘 Learning Objectives

By working through this project, you should understand:

- What happens when running `ls -l *.txt`
- Role of shell initialization files (`/etc/profile`, `/etc/profile.d`, `~/.bashrc`)
- Difference between local and global variables
- Reserved variables (e.g., `HOME`, `PATH`, `PS1`)
- Special parameters (like `$?`)
- How expansions work (variable, command, arithmetic)
- Quote behavior differences (single vs double)
- Command substitution using `$( )` and backticks
- Basic shell arithmetic
- Aliasing and how to disable an alias
- Executing commands from a file in the current shell

---

## 🧪 Script Summary

Below is a brief description of what each script does:

### **0-alias**

Creates an alias named `ls` with the value `rm *`.

### **1-hello_you**

Prints `hello <current_user>` to the terminal.

### **2-path**

Appends `/action` to the end of the `PATH` variable.

### **3-paths**

Counts how many directories exist in the current `PATH`.

### **4-global_variables**

Prints all environment variables.

### **5-local_variables**

Prints all local variables, environment variables, and functions.

### **6-create_local_variable**

Creates a local variable `BEST` with value `School`.

### **7-create_global_variable**

Creates a global variable `BEST` with value `School`.

### **8-true_knowledge**

Prints the result of `128 + $TRUEKNOWLEDGE`.

### **9-divide_and_rule**

Prints the result of `POWER / DIVIDE`.

### **10-love_exponent_breath**

Prints `BREATH` raised to the power `LOVE`.

### **11-binary_to_decimal**

Converts binary value stored in `$BINARY` to decimal.

### **12-combinations**

Prints all lowercase two-letter combinations except `oo`.

### **13-print_float**

Prints a number from `$NUM` rounded to two decimal places.

### **100-decimal_to_hexadecimal**

Converts base-10 `$DECIMAL` to hexadecimal.

### **101-rot13**

Encodes/decodes input text using ROT13.

### **102-odd**

Prints every other line of input (starting from the first).

### **103-water_and_stir**

Adds two numbers encoded in custom bases (`water` and `stir`) and prints the result in `bestchol`.

---

## 📝 Notes

- You must test scripts in an Ubuntu 20.04 environment.
- Ensure every file is executable using `chmod +x filename`.
- Avoid publishing solutions publicly.

---
