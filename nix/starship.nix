{ lib, ... }: {
  programs.starship = {
    enable = true;

    settings = {
      add_newline = true;

      format = lib.concatStrings [
        # https://starship.rs/config/#default-prompt-format
        "$directory"
        "$git_branch"
        "$git_commit"
        "$git_state"
        "$git_metrics"
        "$git_status"

        "$docker_context"
        "$package"
        "$c"
        "$deno"
        "$dotnet"
        "$elixir"
        "$elm"
        "$erlang"
        "$golang"
        "$haskell"
        "$lua"
        "$nodejs"
        "$ocaml"
        "$php"
        "$purescript"
        "$python"
        "$rlang"
        "$ruby"
        "$rust"
        "$typst"
        "$zig"
        "$nix_shell"

        "$gcloud"
        "$aws"
        "$azure"
        "$time"
        "$status"

        "$cmd_duration"
        "$line_break"
        "$character"
      ];

      nodejs = {
        detect_extensions = ["mjs"  "cjs" "mts" "cts"]; # remove `js` and `ts` from default
      };
    };
  };
}

