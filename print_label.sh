#!/bin/bash

function display_options(){
	echo "---------------------------"
	echo "Select an option: "
	echo "1. Purity Label"
	echo "2. Compressor Label"
	echo "3. Sieve Bed Label"
	echo "4. Flowmeter Label"
	echo "---------------------------"
}

mycount=1

while (($mycount == 1))
do
	display_options
	#user selects option here
	read -p ">> " option1

	#print the purity sticker
	if (($option1 == 1))
	then
		echo "Enter number of labels to be printed"
		read -p ">> " number
		for ((x=0; x<$number; x++))
		do
			cat ~/Documents/code/Zebra/purity_sticker.lbl > /dev/usblp0
		done

	#print compressor sticker
	elif (($option1  ==  2)) 
	then
		echo "Enter number of labels to be printed"
		read -p ">> " number
		for ((x=0; x<$number; x++))
		do
			cat ~/Documents/code/Zebra/Compressor_sticker.lbl > /dev/usblp0
		done
		
	#print sieve bed sticker
	elif (($option1 == 3)) 
	then
		echo "Enter number of labels to be printed"
		read -p ">> " number
		for ((x=0; x<$number; x++))
		do
			cat ~/Documents/code/Zebra/sieve_bed_sticker.lbl > /dev/usblp0
		done

	#print flowmeter label
	elif (($option1 == 4))
	then
		echo "Enter number of labels to be printed"
		read -p ">> " number
		for ((x=0; x<$number; x++))
		do
			cat ~/Documents/code/Zebra/flow_meter_label.lbl > /dev/usblp0
		done
	#invalid option
	else
		echo "invalid option"
	fi

	echo "Do you want to print more labels? [y/n]"
	#user input
	read -p ">> " option2
	#continue to print more labels
	if [ $option2 == "y" ]
	then
		continue
	#Exit program
	elif [ $option2 == "n" ]
	then
		mycount=2
	fi
done	
