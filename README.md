<h1 align="center">📘 | EFR x CMU — MotorGo Plink tools for 16-311 | 📘 </h1>

<p align="center">
  Tools for the MotorGo Plink education kits, customized for 16-311
</p>

---

## Table of Contents
- [Table of Contents](#table-of-contents)
- [Introduction](#introduction)
- [Installation](#installation)

---


## Introduction

This repository compiles all of the software for setting up the MotorGo Plink education kits for the 16-311 projects:

* Custom MotorGo Python driver
  * Locked voltage limits MotorGo Red motors
  * Locked power supply voltage
* VL53L4CX range sensor driver
* BH1750 light sensor driver



## Installation
We recommend using Ubuntu 24.04 on your Raspberry Pi. Once the operating system is setup, you can install all of the tools by running this command

``` bash
curl -s https://raw.githubusercontent.com/Every-Flavor-Robotics/cmu-16311-tools/refs/heads/main/install.sh | bash
```

