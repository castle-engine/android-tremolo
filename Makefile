.PHONY: default
default:
	ndk-build

.PHONY: clean
clean:
	rm -Rf libs/ obj/
