#!/bin/bash


echo "╔═══╗╔╗───╔╗╔╗"
sleep 0.1
echo "║╔═╗╠╝╚╗──║║║║"
sleep 0.1
echo "║║─║╠╗╔╬══╣║║╚═╦══╗"
sleep 0.1
echo "║╚═╝║║║║╔╗║║║╔╗║╔╗║"
sleep 0.1
echo "║╔═╗║║╚╣╔╗║╚╣║║║╚╝║"
sleep 0.1
echo "╚╝─╚╝╚═╩╝╚╩═╩╝╚╩══╝"

echo ''
echo 'Linguagem (Language)'
echo '[1] pt-br'
echo '[2] en'
echo ''

read -p 'opção (option): ' idioma
echo ''

if [ $idioma -eq 1 ]; then
	echo 'Para a criação do seu atalho será solicitado'
	echo 'o caminho/diretório de alguns arquivos. Tendo isso'
	echo 'em vista, essas infomações devem ser indicadas com'
	echo 'diretório completo, como no exemplo a seguir.'
	echo ''
	echo '->	/home/{username}/documentos/executavel.sh'
	echo ''

	repete=1
	while [[ $repete -eq 1 ]]; do
		echo 'Qual o caminho para o executável que deseja criar atalho?'
		echo -n ''
		read executavel
		if [ -e $executavel ]; then
			$repete = 0
		else
			echo 'Esse diretório não foi encontrado'
			clear
		fi
	done

		echo -n 'Qual o caminho para o icone do executavel?'


else
	echo 'Selected the English option'
fi
