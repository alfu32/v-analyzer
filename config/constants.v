module config

import os

pub const (
	// analyzer_config_name is the name of the analyzer's configuration
	analyzer_config_name        = 'config.toml'

	// analyzer_configs_path is the path to the directory containing the
	// root configuration files for the analyzer.
	analyzer_configs_path       = os.expand_tilde_to_home('~/.config/spavn-analyzer')

	// analyzer_global_config_path is the path to the global configuration
	// file for the analyzer.
	analyzer_global_config_path = os.join_path(analyzer_configs_path, analyzer_config_name)

	// analyzer_caches_path is the path to the directory containing the
	// cache files for the analyzer.
	analyzer_caches_path        = os.join_path(os.cache_dir(), 'spavn-analyzer')

	// analyzer_stubs_path is the path to the directory containing the
	// unpacked stub files for the analyzer.
	analyzer_stubs_path         = os.join_path(analyzer_configs_path, 'metadata')
)

pub const default = '# Specifies the path to the V installation directory with `v` executable.
# If not set, the plugin will try to find it on its own.
# Basically, you don\'t need to set it.
#custom_vroot = "~/v"

# Specifies whenever to enable semantic tokens or not.
# - `full` — enables all semantic tokens. In this mode analyzer resolves all symbols
#    in the file to provide the most accurate highlighting.
# - `syntax` — enables only syntax tokens, such tokens highlight structural elements
#    such as field names or import names.
#    The fastest option, which is always enabled when the file contains more than 700 lines.
# - `none` — disables semantic tokens.
# By default, `full` for files with less than 700 lines, `syntax` for files with more.
enable_semantic_tokens = "full"

# Specifies inlay hints to show.
[inlay_hints]
# Specifies whenever to enable inlay hints or not.
# By default, they are enabled.
enable = true

# Specifies whenever to show type hints for ranges or not.
# Example:
# ```
# 0 ≤ .. < 10
#   ^    ^
# ```
# or:
# ```
# a[0 ≤ .. < 10]
#     ^    ^
# ```
enable_range_hints = true

# Specifies whenever to show type hints for variables or not.
# Example:
# ```
# name : Foo := foo()
#      ^^^^^
# ```
enable_type_hints = true
'