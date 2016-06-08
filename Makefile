MODULES=./ $(wildcard */)
SRCS=$(foreach sdir,$(MODULES),$(wildcard $(sdir)*.ipynb))
OBJS=$(SRCS:.ipynb=.md)
FILES=$(SRCS:.ipynb=_files)

%.md: %.ipynb
	BASE=$(@:%.md=%)
	rm -rf ${BASE}_files
	ipython nbconvert $< --to markdown --output=${BASE}

.phony: build
build: $(OBJS)

clean:
	rm -rf $(OBJS) $(FILES)