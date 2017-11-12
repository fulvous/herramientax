#!/bin/bash

#herramientax Apoya a la generacion de scripts en espanol
#Copyright (C) 2017 Leon Ramos @fulvous
#
#Este archivo es parte de herramientax
#
#herramientax es software libre: Puede redistribuirlo y/o 
#modificarlo bajo los terminos de la Licencia de uso publico 
#general GNU de la Fundacion de software libre, ya sea la
#version 3 o superior de la licencia.
#
#herramientax es distribuida con la esperanza de que sera util,
#pero sin ningun tipo de garantia; inclusive sin la garantia
#implicita de comercializacion o para un uso particular.
#Vea la licencia de uso publico general GNU para mas detalles.
#
#Deberia de recibir uan copia de la licencia de uso publico
#general junto con herramientax, de lo contrario, vea
#<http://www.gnu.org/licenses/>.
#
#This file is part of herramientax
#
#herramientax is free software: you can redistribute it and/or 
#modify it under the terms of the GNU General Public License 
#as published by the Free Software Foundation, either version 3 
#of the License, or any later version.
#
#herramientax is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with herramientax  If not, see 
#<http://www.gnu.org/licenses/>.

function echon {
  echo "${*}" | tr -d '\n'
}

function informa {
  NUMBER=1
  for ARG in "$@" ; do
    case $NUMBER in
      1)
        echon ${NEGRITA}${ARG}": "
      ;;
      2)
        echon ${AMARILLO}${ARG}" "
      ;;
      3)
        echon "${BLANCO}-- ${CYAN}${ARG} "
      ;;
      *)
        echon ${ARG}" "
      ;;
    esac
    NUMBER=$(( NUMBER + 1 ))
  done
  echo "${BLANCO}--${RESET}"
}

function informa_ok {
  NUMBER=1
  for ARG in "$@" ; do
    case $NUMBER in
      1)
        echon ${NEGRITA}${ARG}": "
      ;;
      2)
        echon ${AMARILLO}${ARG}" "
      ;;
      *)
        echon "${BLANCO}[ ${VERDE}${ARG} "
      ;;
    esac
    NUMBER=$(( NUMBER + 1 ))
  done
  echo "${BLANCO}]${RESET}"
}

function informa_err {
  NUMBER=1
  for ARG in "$@" ; do
    case $NUMBER in
      1)
        echon ${NEGRITA}${ARG}": "
      ;;
      2)
        echon ${AMARILLO}${ARG}" "
      ;;
      *)
        echon "${BLANCO}[ ${ROJO}${ARG} "
      ;;
    esac
    NUMBER=$(( NUMBER + 1 ))
  done
  echo "${BLANCO}]${RESET}"
}
