MODULES=./ $(wildcard */)
_SRCS=$(foreach sdir,$(MODULES),$(wildcard $(sdir)*.ipynb))
SRCS=$(_SRCS:./%=%)
OBJS=$(SRCS:%.ipynb=src/%.md)
FILES=$(SRCS:%.ipynb=src/%_files)

src/%.md: %.ipynb
	@rm -rf $(@:src/%.md=src/%_files)
	@ipython nbconvert $< --to markdown --output-dir=src/$(dir $<)

.phony: build
build: $(OBJS)

clean:
	@rm -rf src