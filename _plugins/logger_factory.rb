# frozen_string_literal: true

# @author Copyright 2020 Michael Slinn
# @license SPDX-License-Identifier: Apache-2.0

# Looks within _config.yml for a key corresponding to the plugin progname.
# For example, if the plugin's progname has value "abc" then an entry called logger_factory.abc
# will be read from the config file, if present.
# If the entry exists, its value overrides the value specified when create_logger() was called.
# If no such entry is found then the log_level value specified when create_logger() was called is used.
#
# @example Create a new logger using this code like this:
#   LoggerFactory.new.create_logger('my_tag_name', site.config, Logger::WARN, $stderr)
#
# For more information about the logging feature in the Ruby standard library,
# @see https://ruby-doc.org/stdlib-2.7.1/libdoc/logger/rdoc/Logger.html
class LoggerFactory
  require 'logger'

  # @param log_level [String, Symbol, Integer] can be specified as $stderr or $stdout,
  #   or an integer from 0..3 (inclusive),
  #   or as a case-insensitive string
  #   (`debug`, `info`, `warn`, `error`, or `DEBUG`, `INFO`, `WARN`, `ERROR`),
  #   or as a symbol (`:debug`, `:info`, `:warn`, `:error` ).
  #
  # @param config [YAML] is normally created by reading a YAML file such as Jekyll's `_config.yml`.
  #   When invoking from a Jekyll plugin, provide `site.config`,
  #   which is available from all types of Jekyll plugins as `Jekyll.configuration({})`.
  #
  # @example  If `progname` has value `abc`, then the YAML to override the programmatically set log_level to `debug` is:
  #   logger_factory:
  #     abc: debug
  def create_logger(progname, config, log_level, stream_name)
    config_log_level = check_config_log_level(config: config, progname: progname)

    logger = Logger.new(stream_name)
    logger.level = config_log_level || log_level
    logger.progname = progname
    logger.formatter = proc { |severity, _, prog_name, msg|
      "#{msg}\n"
    }
    logger
  end

  private

  # @param config [YAML] Configuration data that might contain a entry for `logger_factory`
  # @param progname [String] The name of the `config` subentry to look for underneath the `logger_factory` entry
  # @return [String, FalseClass]
  def check_config_log_level(config:, progname:)
    log_config = config['logger_factory']
    return false if log_config.nil?

    progname_log_level = log_config[progname]
    return false if progname_log_level.nil?

    progname_log_level
  end
end
