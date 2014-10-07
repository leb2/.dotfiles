#!/bin/bash

for f in $(ls links); do
	rm -r $HOME/.$f
	ln -s $(pwd)/links/$f $HOME/.$f
done
