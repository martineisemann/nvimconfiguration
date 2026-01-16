return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio", -- Erforderlich für dap-ui
        "theHamsta/nvim-dap-virtual-text",
        "williamboman/mason.nvim",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        require("nvim-dap-virtual-text").setup()
        dapui.setup()

        -- Konfiguration für C++
        dap.configurations.cpp = {
            {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
                showDisassembly = "never",
            },
        }
        -- Für C und Rust übernehmen
        dap.configurations.c = dap.configurations.cpp
        dap.configurations.rust = dap.configurations.cpp

        dap.adapters.codelldb = {
            type = 'server',
            port = "${port}",
            executable = {
                -- Pfad muss ggf. angepasst werden (Mason Standardpfad)
                command = vim.fn.stdpath("data") .. '/mason/bin/codelldb',
                args = { "--port", "${port}" },
            }
        }

        -- Keymaps für das Debugging
        vim.keymap.set('n', '<leader>dc', function() dap.continue() end, { desc = "Debug: Start/Continue" })
        vim.keymap.set('n', '<leader>ds', function() dap.step_over() end, { desc = "Debug: Step Over" })
        vim.keymap.set('n', '<leader>di', function() dap.step_into() end, { desc = "Debug: Step Into" })
        vim.keymap.set('n', '<leader>do', function() dap.step_out() end, { desc = "Debug: Step Out" })
        vim.keymap.set('n', '<leader>db', function() dap.toggle_breakpoint() end,
            { desc = "Debug: Toggle Breakpoint" })
        vim.keymap.set('n', '<leader>dq', function()
            require("dap").terminate()
            require("dapui").close()
        end, { desc = "Debug: Quit Session" })

        -- Automatisch die UI öffnen/schließen
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end
    end,
}
