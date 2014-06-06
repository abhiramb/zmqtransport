# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := zmq
DEFS_Debug := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-m64 \
	-I/usr/local/include \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti

INCS_Debug := \
	-I/home/mr490k/.node-gyp/0.10.28/src \
	-I/home/mr490k/.node-gyp/0.10.28/deps/uv/include \
	-I/home/mr490k/.node-gyp/0.10.28/deps/v8/include \
	-I$(srcdir)/node_modules/nan

DEFS_Release := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-m64 \
	-I/usr/local/include \
	-O2 \
	-fno-strict-aliasing \
	-fno-tree-vrp \
	-fno-tree-sink \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti

INCS_Release := \
	-I/home/mr490k/.node-gyp/0.10.28/src \
	-I/home/mr490k/.node-gyp/0.10.28/deps/uv/include \
	-I/home/mr490k/.node-gyp/0.10.28/deps/v8/include \
	-I$(srcdir)/node_modules/nan

OBJS := \
	$(obj).target/$(TARGET)/binding.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	-lzmq \
	-L/usr/local/lib -lzmq

$(obj).target/zmq.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/zmq.node: LIBS := $(LIBS)
$(obj).target/zmq.node: TOOLSET := $(TOOLSET)
$(obj).target/zmq.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/zmq.node
# Add target alias
.PHONY: zmq
zmq: $(builddir)/zmq.node

# Copy this to the executable output path.
$(builddir)/zmq.node: TOOLSET := $(TOOLSET)
$(builddir)/zmq.node: $(obj).target/zmq.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/zmq.node
# Short alias for building this executable.
.PHONY: zmq.node
zmq.node: $(obj).target/zmq.node $(builddir)/zmq.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/zmq.node

