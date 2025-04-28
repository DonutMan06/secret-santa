#! /bin/bash

noms=("Riri" "Fifi" "Loulou")
email=("riri@duck.dc" "fifi@duck.dc" "loulou@duck.dc")

N=${#noms[@]}

echo "N = $N"

shuffle_ok=0

while [ $shuffle_ok -eq 0 ]; do
	shuffle=( $(seq 0 $((N-1)) | shuf) )
	shuffle_ok=1
	for k in $(seq 0 $((N-1)) ); do
		[ "${shuffle[$k]}" -eq "$k" ] && shuffle_ok=0
	done
done


for k in $(seq 0 $((N-1)) ) ; do
	p=${shuffle[$k]}
	#echo "$k --> noms[$p] = ${noms[$p]}"
	mail -r "donald@duck.dc" -s "Secret Santa" "${email[$k]}" << EOF
Bonjour ${noms[$k]},
pour ce Noel tu dois faire un cadeau a ${noms[$p]}
Bonne chance !

Merci de ne pas repondre directement a ce mail, mais plutot m'envoyer un mot de bonne reception via Facebook.

Hate d'etre a Noel !!!

Donut


---------------------------------------
$(cat $0)
EOF
done
