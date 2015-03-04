#! /bin/bash

art=1
sec=1
cap=1
tit=1

ad=1
tr=1
der=1
fin=1

cat reglamento.list | while read file
do
	case $file in
		*.art )
			printf "#### Artículo $art. "
			cat $file 2> /dev/null || echo $file
			echo
			let art=art+1
		;;
		
		*.sec )
			printf "### Sección $secª. "
			cat $file 2> /dev/null || echo $file
			echo
			let sec=sec+1
		;;
	
		*.cap )
			printf "## Capítulo $cap. "
			cat $file 2> /dev/null || echo $file
			echo
			let cap=cap+1
			let sec=1
		;;
		
		*.tit )
			printf "# Título $titº. "
			cat $file 2> /dev/null || echo $file
			echo
			let tit=tit+1
			let cap=1
			let sec=1
		;;
		
		*.ad )
			printf "#### Disposición adicional $adª. "
			cat $file 2> /dev/null || echo $file
			echo
			let ad=ad+1
		;;
		
		*.tr )
			printf "#### Disposición transitoria $trª. "
			cat $file 2> /dev/null || echo $file
			echo
			let tr=tr+1
		;;
		
		*.der )
			printf "#### Disposición derogatoria $derª. "
			cat $file 2> /dev/null || echo $file
			echo
			let der=der+1
		;;
		
		*.fin )
			printf "#### Disposición final $finª. "
			cat $file 2> /dev/null || echo $file
			echo
			let fin=fin+1
		;;
	esac
done > reglamento.md
 