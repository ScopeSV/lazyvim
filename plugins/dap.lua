return {

  "mfussenegger/nvim-dap",
  opts = function()
    local dap = require("dap")
    local file = vim.fn.expand("%:p")
    local projectFolder = ""
    local cwd = vim.fn.getcwd():gsub([[-]], "%%-")
    local mason_registry = require("mason-registry")
    local bash_debug_adapter_dir = mason_registry.get_package("bash-debug-adapter"):get_install_path()
    local bashdb_dir = bash_debug_adapter_dir .. "/extension/bashdb_dir"
    if string.find(file, cwd .. "/apps/") or string.find(file, cwd .. "/libs/") then
      projectFolder = string.match(file, cwd .. "(.-/[^/]+)/src")
    end
    if not dap.adapters["pwa-node"] then
      require("dap").adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "node",
          -- üíÄ Make sure to update this path to point to your installation
          args = {
            require("mason-registry").get_package("js-debug-adapter"):get_install_path()
              .. "/js-debug/src/dapDebugServer.js",
            "${port}",
          },
        },
      }
    end
    for _, language in ipairs({ "typescript", "javascript" }) do
      dap.configurations[language] = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch",
          program = "${workspaceFolder}/node_modules/ts-node/dist/bin.js",

          cwd = vim.fn.getcwd(),
          args = {
            "${workspaceFolder}/api/src/index.ts",
          },
          env = {
            NODE_ENV = "dev",
            AWS_ACCESS_KEY_ID = "",
            AWS_SECRET_ACCESS_KEY = "",
            AWS_SESSION_TOKEN = "",
          },
        },
        {
          type = "pwa-node",
          request = "launch",
          name = "Hours",
          args = { "./src/index.ts" },
          runtimeArgs = { "-r", "ts-node/register" },
          internalConsoleOptions = "openOnSessionStart",
          envFile = "${workspaceFolder}/.env",
          outputCapture = "std",
        },
        {
          type = "pwa-node",
          request = "attach",
          name = "attach by process",
          processid = require("dap.utils").pick_process,
          cwd = "${workspacefolder}" .. projectFolder,
        },
        {
          type = "pwa-node",
          request = "attach",
          name = "attach by port",
          port = 9229,
          cwd = "${workspacefolder}" .. projectFolder,
        },
        {
          type = "pwa-chrome",
          request = "launch",
          name = "Launch & Debug chrome",
          url = "http://localhost:4200",
          webroot = vim.fn.getcwd(),
          protocol = "inspector",
          sourcemaps = true,
          userdatadir = false,
        },
      }
    end
  end,
}
