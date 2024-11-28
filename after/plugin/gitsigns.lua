require('gitsigns').setup {
    attach_to_untracked = true,
    current_line_blame = true,

    on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
        end

        -- Actions
        map('n', '<leader>hS', gitsigns.stage_buffer, { desc = 'Git [S]tage Buffer' })
        map('n', '<leader>hs', gitsigns.stage_hunk, { desc = '[S]tage [H]unk under cursor' })
        map('n', '<leader>hu', gitsigns.undo_stage_hunk, { desc = '[U]ndo [S]taged [H]unk under cursor' })
        map('n', '<leader>td', gitsigns.toggle_deleted, { desc = '[T]oggle [D]eleted Line Changes' })
        map('v', '<leader>hs', function() gitsigns.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end, { desc = '[S]tage [H]unk under cursor in Visual mode' })
        map('v', '<leader>hr', function() gitsigns.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end, { desc = '[U]ndo [S]taged [H]unk under cursor in Visual mode' })
        map('n', '<leader>gb', function() gitsigns.blame_line { full = true } end, { desc = 'Preview [G]it [B]lame' })
        map('n', '<leader>hd', gitsigns.diffthis, { desc = 'Show [H]unk Git [D]iff' })
    end
}
