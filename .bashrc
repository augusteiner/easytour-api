#!/usr/bin/env sh

export SWAGGER_VERSION=2.2.2
export BIN_DIR=$PWD/bin

mvn_exec() {
  _PWD=$PWD
  echo '$_PWD: '$_PWD

  ( cd $BIN_DIR; ./mvnw $_MAVEN_OPTS -f $_PWD "$@" )
}

swagger_codegen_exec() {
  java -jar $BIN_DIR/swagger-codegen-cli-$SWAGGER_VERSION.jar "$@"
}

alias mvn=mvn_exec
alias swagger-codegen=swagger_codegen_exec

# export -f mvn
# export -f swagger_codegen


