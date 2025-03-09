return {
	"goolord/alpha-nvim",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			"=================     ===============     ===============   ========  ========",
			"\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
			"||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
			"|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
			"||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
			"|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
			"||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
			"|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
			"||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
			"||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
			"||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
			"||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
			"||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
			"||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
			"||   .=='    _-'          '-__\\._-'         '-_./__-'         `' |. /|  |   ||",
			"||.=='    _-'                                                     `' |  /==.||",
			"=='    _-'                        N E O V I M                         \\/   `==",
			"\\   _-'                                                                `-_   /",
			" `''                                                                      ``'",
		}

		vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#de022a" }) -- Set custom header color
		dashboard.section.header.opts.hl = "DashboardHeader"

		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "  > Find file", ":cd $HOME/Documents/programming | Telescope find_files<CR>"),
			dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "  > Settings", ":cd $HOME/.config/nvim | Telescope find_files <CR>"),
			dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
			dashboard.button("h", "  > Check Health", ":checkhealth<CR>"),
		}

		local quotes = {
			"Programs are meant to be read by humans and only incidentally for computers to execute. - Donald Knuth",
			"The computer was born to solve problems that did not exist before. - Bill Gates",
			"Any fool can write code that a computer can understand. Good programmers write code that humans can understand. - Martin Fowler",
			"The best way to predict the future is to invent it. - Alan Kay",
			"Software is a great combination between artistry and engineering. - Bill Gates",
			"It’s not a bug – it’s an undocumented feature. - Anonymous",
			"Talk is cheap. Show me the code. - Linus Torvalds",
			"Programs must be written for people to read, and only incidentally for machines to execute. - Harold Abelson",
			"First, solve the problem. Then, write the code. - John Johnson",
			"The most disastrous thing that you can ever learn is your first programming language. - Alan Kay",
		}
		-- Function to get a random quote
		math.randomseed(os.time()) -- Seed the random number generator
		local random_quote = quotes[math.random(#quotes)]

		-- Get the current date and time
		local date_time = os.date("%A, %B %d, %Y - %I:%M:%S %p") -- e.g. "Saturday, March 08, 2025 - 03:45:12 PM"

		-- Helper function to center a string within a given width
		local function center_string(str, width)
			local spaces = width - #str
			local left_padding = math.floor(spaces / 2)
			local right_padding = spaces - left_padding
			return string.rep(" ", left_padding) .. str .. string.rep(" ", right_padding)
		end

		-- Set the random quote and the date/time in the footer, centered
		local width = 80 -- The width of the footer
		local centered_quote = center_string(random_quote, width)
		local centered_date_time = center_string(date_time, width)

		-- Set the final footer
		dashboard.section.footer.val = centered_quote .. "\n" .. centered_date_time
		alpha.setup(dashboard.config)
		-- disable folding on alpha buffer
		vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
    ]])
	end,
}
