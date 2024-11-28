{pkgs, ...}: {
  programs.gh = {
    enable = true;

    extensions = with pkgs; [
      gh-markdown-preview
      gh-contribs
    ];
    settings = {editor = "nvim";};
  };
}
