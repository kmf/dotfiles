{ pkgs, ... }:

let
  buildVimPlugin = { name, owner, rev, sha256 }: pkgs.vimUtils.buildVimPlugin rec {
    inherit name;
    src = pkgs.fetchFromGitHub {
      inherit owner rev sha256;
      repo = name;
    };
  };
in
{
        extraPlugins = [
            (buildVimPlugin {
                name = "aw-watcher-vim";
                owner = "ActivityWatch";
                rev = "4ba86d05a940574000c33f280fd7f6eccc284331";
                sha256 = "I7YYvQupeQxWr2HEpvba5n91+jYvJrcWZhQg+5rI908=";
    })
	];
}