-- Activar números de línea absolutos y relativos
vim.wo.number = true
vim.wo.relativenumber = true

-- Habilitar el portapapeles del sistema
vim.o.clipboard = 'unnamedplus'

-- Opciones adicionales recomendadas
vim.o.expandtab = true        -- Usar espacios en vez de tabs
vim.o.shiftwidth = 2          -- Tamaño de indentación
vim.o.tabstop = 2             -- Tamaño de tabulación
vim.o.smartindent = true      -- Indentación inteligente
vim.o.wrap = true             -- Activar el ajuste de línea
vim.o.linebreak = true        -- Las lineas se rompen de manera inteligente
vim.o.termguicolors = true    -- Soporte de colores en el terminal
vim.o.scrolloff = 8           -- Margen al hacer scroll
vim.o.autoindent = true
vim.o.paste = true

-- Inicializar Packer
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Gestor de plugins

    -- Tema de colores (opcional)
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Soporte de lenguaje y autocompletado (opcional)
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
end)

-- Configuración del tema
vim.cmd[[colorscheme catppuccin-mocha]]
