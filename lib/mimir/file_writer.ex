defmodule Mimir.FileWriter do
  require Logger

  def write_enum_to_file filename, enum do
    File.rm(filename)
    write_lines enum, filename
  end

  def write_lines [], _ do
    Logger.info "Write complete."
  end

  def write_lines [h|t], file do
    IO.inspect h
    write_line h, file
    write_lines t, file
  end

  def write_line [date | [val|_]], file do
    File.write file, date <> "," <> Float.to_string(val) <> "\n", [:append, :utf8]
  end
end
