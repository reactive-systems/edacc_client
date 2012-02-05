.PHONY: all clean

export USE_HWLOC=0

all:
	mkdir -p bin/verifiers
	$(MAKE) -C src/ all
	$(MAKE) -C verifiers/ all

clean:
	$(MAKE) -C src/ clean
	$(MAKE) -C verifiers/ clean
