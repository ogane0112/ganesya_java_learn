jrun() {
  mkdir -p compile
  javac -d compile *.java
  java -cp compile "${1:-Main}"
}