{lib, ...}: {
  programs.starship = {
    enable = true;

    settings = {
      add_newline = true;

      format = lib.concatStrings [
        # https://zenn.dev/izumin/articles/81d12705aebbd3
        "\${custom.git_repo}"
        "$directory"

        "$git_branch"
        "$git_commit"
        "$git_state"
        "$git_metrics"
        "$git_status"

        "$docker_context"
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

      custom.git_repo = {
        when = true;
        require_repo = true;
        command = ''git rev-parse --show-toplevel | sed -e "s,$(ghq root)/\(github\.com/\)\?,,"'';
        style = "bold blue";
      };

      directory = {
        truncation_length = 100;
        format = "[$path ]($style)[$read_only]($read_only_style)";
        repo_root_format = "[($path )]($style)";
        repo_root_style = "underline";
      };

      nodejs = {
        detect_extensions = ["mjs" "cjs" "mts" "cts"]; # remove `js` and `ts` from default
      };
    };
  };
}
