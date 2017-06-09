# Arg 1: a file containing a list of labels (numbers only), one per line"
# Arg 2: a dot file representing a CFG, processed with labels-only.sh"
# Out: $1.dot - a copy of $2 with nodes having the given labels colored"
cp $2 $1.dot
for bb in `cat $1` ; do
  sed "s/label=\"{%$bb}\"/label=\"{%$bb}\",style=\"filled\",fillcolor=\"green\"/" $1.dot -i
done
