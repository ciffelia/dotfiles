#!/usr/bin/env fish

function refresh_completions -d "Regenerate completions for various tools"
    set completions_dir $XDG_DATA_HOME/dotfiles/fish-completions

    rm -rf $completions_dir
    mkdir -p $completions_dir

    if command -q bat
        bat --completion fish > $completions_dir/bat.fish
    end

    if command -q chezmoi
        chezmoi completion fish > $completions_dir/chezmoi.fish
    end

    if command -q cosign
        cosign completion fish > $completions_dir/cosign.fish
    end

    if command -q delta
        delta --generate-completion fish > $completions_dir/delta.fish
    end

    if command -q helm
        helm completion fish > $completions_dir/helm.fish
    end

    if command -q kubectl
        kubectl completion fish > $completions_dir/kubectl.fish
    end

    if test -d (mise where lsd 2>/dev/null)
        cp (mise where lsd)/lsd-*/autocomplete/lsd.fish $completions_dir/lsd.fish
    end

    if command -q mise
        mise completion fish > $completions_dir/mise.fish
    end

    if command -q onefetch
        onefetch --generate fish > $completions_dir/onefetch.fish
    end

    if command -q pdftrim
        pdftrim --generate-completion fish > $completions_dir/pdftrim.fish
    end

    if command -q rclone
        rclone completion fish $completions_dir/rclone.fish
    end

    if command -q rg
        rg --generate=complete-fish > $completions_dir/rg.fish
    end

    if command -q rustup
        rustup completions fish > $completions_dir/rustup.fish
        # cargo does not currently support completions for fish
        # rustup completions fish cargo > $completions_dir/cargo.fish
    end

    if command -q starship
        starship completions fish > $completions_dir/starship.fish
    end

    if command -q usage
        usage --completions fish > $completions_dir/usage.fish
    end

    if command -q uv
        uv generate-shell-completion fish > $completions_dir/uv.fish
    end

    if command -q uvx
        uvx --generate-shell-completion fish > $completions_dir/uvx.fish
    end

    if command -q yq
        yq shell-completion fish > $completions_dir/yq.fish
    end
end
