local jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
local jar_path = vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")
if jar_path == "" then
	error("Launcher JAR not found in jdtls plugins")
end
-- needs to be downloaded from official website
local lombok_path = jdtls_path .. "/lombok.jar"

local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle", "build.gralde.kts" }
local root_dir = require("jdtls.setup").find_root(root_markers)
if root_dir == "" then
	return
end

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") .. "/site/java/workspace-root/" .. project_name
if vim.fn.isdirectory(workspace_dir) == 0 then
	vim.fn.mkdir(workspace_dir, "p")
end

local config = {
	cmd = {
		"/usr/bin/java",
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-javaagent:" .. lombok_path,
		"-Xms1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"-jar",
		jar_path,
		"-configuration",
		jdtls_path .. "/config_mac",
		"-data",
		workspace_dir,
	},
	root_dir = vim.fs.root(0, root_markers),
}

require("jdtls").start_or_attach(config)
