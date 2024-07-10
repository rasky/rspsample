BUILD_DIR=build
include $(N64_INST)/include/n64.mk

src = rspsample.c
asm = rsp_test.S

all: rspsample.z64

$(BUILD_DIR)/rspsample.elf: $(src:%.c=$(BUILD_DIR)/%.o) $(asm:%.S=$(BUILD_DIR)/%.o)

rspsample.z64: N64_ROM_TITLE="RSP Sample Demo"

clean:
	rm -rf $(BUILD_DIR) filesystem rspsample.z64

-include $(wildcard $(BUILD_DIR)/*.d)

.PHONY: all clean
