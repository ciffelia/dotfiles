return require('packer').startup(function(use)
  -- packer自身もpackerで管理する
  use 'wbthomason/packer.nvim'

  -- カラースキーム
  use 'EdenEast/nightfox.nvim'

  -- ステータスライン（一番下に表示されるやつ）
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- カーソルが当たった単語と同じ単語をハイライトする
  use 'RRethy/vim-illuminate'

  -- 右端にスクロールバーを表示する
  use 'petertriho/nvim-scrollbar'
end)
