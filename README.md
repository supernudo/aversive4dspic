# Aversive for dsPIC

## Introduction

[Aversive](http://wiki.droids-corp.org/articles/a/v/e/Aversive.html) is a development framework for AVR. **Aversive4dspic** is a fork of Aversive libs which adds the support for dsPIC MCUs. The goal of this project is to reuse the Aversive modules and provide modules to make development on dsPIC easier.

Aversive toolchain uses Makefiles flow for configuration, compilation, and for program the MCU target. Aversive4dspic use the Makefile toolchain only for the configuration of the project. The compilation and programing of target is done using the MPLAB or MPLABX IDE. 

This is a development version, there are certainly a lot of bugs. Don't hesitate to tell us if you find one.

## The source tree

**NOTE:** all dsPIC modules are placed in a folder named "dspic"

    config                  -> files related to aversive configuration
      config/fuses_defs     -> fuse names and help
      config/gen_headers    -> dirty scripts for generating some .h
      config/scripts        -> project configuration scripts (imported 
    						   from linux-2.4 kernel)

    include                 -> generic Aversive include files, that are
    						   not related to a module

    mk                      -> Aversive Makefiles (project, module, and
    						   templates) 

    modules                 -> modules directory. A "module" is a small
    						   library that provide a specific
    						   functionnality
      modules/base          -> common modules, frequently used
      modules/comm          -> communication modules (uart, spi, i2c, ...)
      modules/crypto        -> modules for cryptographic operations
      modules/debug         -> helper modules for debugging
      modules/devices       -> modules related to a device that is not
    						   part of an Atmel AVR (lcd, motors, ...)
      modules/encoding      -> buffer conversion (base64, hamming)
      modules/hardware      -> generic interfaces module for specific AVR
    						   hardware (timers, ADC, ...)
      modules/ihm           -> Human-machine interface modules (menu, and
    					       probably a future CLI)

    projects                -> Project examples (to be enhanced)
      projects/example1
      projects/example2

## Create a new project

Create a Makefile:

    cp $(AVERSIVE_DIR)/mk/Makefile_project.template Makefile

Edit the Makefile and customize the following values :

    AVERSIVE_DIR = # VALUE, absolute or relative path to the root of aversive
    SRC = $(TARGET).c another_file.c another_file2.c 

You can see examples in Makefiles located in `$(AVERSIVE_DIR)/modules/.../test` directories. 

**Warning:** check that you don't have space chars after you variables declarations.

Create your sources file (.c). One of your file must have a `main()` function.

### Configure the project

In an aversive project, you need an `.config` file, that describes which options are enabled (like in the linux kernel).

Two files are generated from it: `.aversive_conf` and `autoconf.h`:
* `.aversive_conf` is included in the project `Makefile` 
- `autoconf.h` file is included in `base/utils/utils.h`

If you want to edit something by hands, you should not edit `.aversive_conf` or `autoconf.h`, but .config... Don't worry, you won't have to edit this `.config` file by hands since there are configure scripts. So just run:

	make config

Then answer to the questions. You can answer '?' if you want some help.

There is another way to configure :

	make noconfig

This will create a `.config file` if it does not exists. You can edit it by hand, and run back `make noconfig` to update your `.aversive_conf` and `autoconf.h`.

For Aversive4dspic projects, you need to create a MPLAB or MPLABX project and configure it:

* Add the source files of Aversive modules to be used and the source files of the project (`main.c`, ...).
* Add the include paths to the Aversive modules.
* Configure the compiler (C30 or [XC16](http://www.microchip.com/mplab/compilers)).
* Configure the programer (ICD, Pickit, ...).

**NOTE:** you can use as a template the MPLAB project of any Aversive4dpic module test (`$(AVERSIVE_DIR)/modules/.../dpic/test`). In case of use MPLABX, import the MPLAB project.

### Build the project and program the target

For AVR MCUs you need `avr-gcc` compiler (available on Linux or [Windows](http://www.webring.org/l/rd?ring=avr;id=59;url=http%3A%2F%2Fwinavr%2Esourceforge%2Enet%2F)) and [`avr-lib`](http://www.nongnu.org/avr-libc/) libraries. For compile and program the tarjet run:

    make
    make program

For dsPIC MCUs use [MPLAB](http://www.microchip.com/mplab/software-solutions-home) (only Windows) or [MPLABX](http://www.microchip.com/mplab/mplab-x-ide) (several PC platforms) compile and program functions.


### References

* [Aversive Devguide](http://wiki.droids-corp.org/articles/a/v/e/Aversive/Devguide.html#How_to_create_a_new_project_using_Aversive_.3F)
* [Aversive modules documentation](http://wiki.droids-corp.org/articles/a/v/e/Aversive/Modules.html)
* [Aversive control system engine](http://wiki.droids-corp.org/articles/a/v/e/Aversive/Asservissement_Microb_2008.html)
* [Aversive Git repository](http://git.droids-corp.org/?p=aversive.git;a=summary)

## Authors

See AUTHORS file for details.

Aversive main authors:

* Christophe RIEHL
* Olivier MATZ

Aversive4dspic authors:

* Javier Baliñas Santos

## Copyright

Droids-Corporation, Microb Technology, Eirbot and Eurobotics Engineering

## License

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

