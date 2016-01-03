alias in='task add +in'

tickle () {
    deadline=$1
    shift
    task add \+in \+tickle wait:$deadline $@
}
alias tick='tickle'
alias think='tickle +1d'

alias rnd='task add +rnd +next +@computer +@online'


read_and_review (){
    link="$1"
    descr="\"Read and review: $link\""
    id=$(task add \+next \+rnr "$descr" | sed -n 's/Created task \(.*\)./\1/p')
    task "$id" annotate "$link"
}

alias rnr=read_and_review

