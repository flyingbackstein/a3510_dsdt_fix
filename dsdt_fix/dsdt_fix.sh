#!/bin/bash
cd ~/Schreibtisch/dsdt_fix
sudo dmidecode | grep "BIOS Revision"
PS3='DSDT Fix für BIOS-Version: '
version=("1.09" "1.10" "1.12" "Abbrechen")
select ver in "${version[@]}"; do
    case $ver in
        "1.09")
            sudo cp ./09_DSDT.aml /boot/dsdt.aml
            sudo cp ./01_acpi /etc/grub.d/
            sudo update-grub
            ;;
        "1.10")
            sudo cp ./10_DSDT.aml /boot/dsdt.aml
            sudo cp ./01_acpi /etc/grub.d/
            sudo update-grub
            ;;
        "1.12")
            sudo cp ./12_DSDT.aml /boot/dsdt.aml
            sudo cp ./01_acpi /etc/grub.d/
            sudo update-grub
	    break
            ;;
	"Abbrechen")
	    echo "Abbruch durch Eingabe"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
