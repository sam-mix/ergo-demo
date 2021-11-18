.PHONY:
all: clean compile stop wait run hello_world
# .PHONY:
# all: hello_world

.PHONY:
clean:
	@rm -rf er_mk/ebin

.PHONY:
compile:
	@mkdir -p er_mk/ebin
	@cd er_mk && erl -noinput -eval 'up_to_date = make:all()' -s erlang halt

.PHONY:
run:
	@cmd /Q /C "start werl -name z@127.0.0.1 -pa er_mk/ebin -setcookie 123"

.PHONY:
stop:
	@erl -name stop_z@127.0.0.1 -setcookie 123 -noinput -eval "rpc:call('x@127.0.0.1', init, stop, [])" -s erlang halt

.PHONY:
wait:
	@sleep 1

# go
.PHONY:
hello_world: # go run 
	@cd go/cmd/hello-world && go run main.go
	

# other
.PHONY:
go: tidy get

.PHONY:
tidy:
	@cd go && go mod tidy

.PHONY:
get:
	@cd go && go mod download

.PHONY:
cfg:
	cp ergo/conf/config.default.toml ergo/conf/config.toml
