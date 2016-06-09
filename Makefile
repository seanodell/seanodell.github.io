MODULES=./ $(wildcard */)
_SRCS=$(foreach sdir,$(MODULES),$(wildcard $(sdir)*.ipynb))
SRCS=$(_SRCS:./%=%)
OBJS=$(SRCS:%.ipynb=%.md)
FILES=$(SRCS:%.ipynb=%_files)

%.md: %.ipynb
	@rm -rf $(@:src/%.md=%_files)
	@ipython nbconvert $< --to markdown --output-dir=$(dir $<)

.phony: build
build: $(OBJS)

clean:
	@rm -rf $(OBJS) $(FILES)