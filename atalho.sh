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

#read -p 'opção (option): ' idioma
idioma=1
echo ''

buscarDiretorio()
{

	msg=$([[ -z $1 ]] && echo "Qual o diretório esta buscando?" || echo $1)

	repete=1
	while [[ $repete -eq 1 ]]; do
		echo -e "$msg"
		read -e executavel
		if [ -f $executavel ]; then
			repete=0
		else
			clear
			echo 'Esse diretório não foi encontrado'
		fi
	done

	return 1

}


if [ $idioma -eq 1 ]; then
	echo 'Para a criação do seu atalho será solicitado'
	echo 'o caminho/diretório de alguns arquivos. Tendo isso'
	echo 'em vista, essas infomações devem ser indicadas com'
	echo -e 'diretório completo, como no exemplo a seguir. \n'
	echo -e '->	/home/{username}/documentos/executavel.sh \n'

	buscarDiretorio "Qual o diretório para o executável que será um atalho?"
	buscarDiretorio "Qual o diretório para o icone do atalho?"


else
	echo 'Selected the English option'
fi

echo -e '\n'
