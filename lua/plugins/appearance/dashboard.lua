return {
	"goolord/alpha-nvim",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			"                                                       ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⢆⠀⠀⠀⠀⠀⢸⡀⠸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡈⠓⢤⣀⠀⠀⠸⣧⠀⢻⡄⠀⠀⠀⢀⣀⣠⡴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⣄⠀⠀⠉⠉⠛⠛⠀⠀⠻⠒⠂⠉⢁⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⣀⠀⠀⠀⢀⡠⠔⠚⢉⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠤⣀⠁⠒⠦⠤⠤⢤⣤⠄⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠈⠙⢍⡁⠀⠀⠀⡔⢁⡄⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⣀⠀⠀⠭⠤⢠⡤⠔⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⢨⡿⠀⣼⢜⠏⡄⠀⡀⠀⡠⠀⡖⠀⢠⠀⠀⢄⠉⢀⠀⠀⠀⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⢠⣿⡵⡼⠏⡜⢸⠁⣤⠇⢀⠇⢠⡇⢰⢸⣾⠀⢸⡄⠀⣧⠀⣆⠀⠨⠒⢤⣄⡀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⢠⠏⣻⠃⠀⣼⠇⡆⣰⢹⠀⣾⠀⣸⠇⢸⣾⣿⣇⠈⣿⣆⢹⡇⢹ ⣦⡈⢗⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀     ",
			"     ⠀⠀⠀⠀⢀⣴⡿⠊⡽⢀⠎⣿⠀⣠⡗⢚⣾⣿⣴⠳⣧⡞⡄⢿⠟⠉⠉⢙⣦⢳⠘⣿⣿⣆⣿⡦⠄⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠈⠁⠀⢀⣇⡎⢠⢿⢠⣿⣤⠊⢀⣠⣴⣿⣿⠴⢷⣿⣤⣶⣾⣿⣿⡿⣷⢿⣿⣦⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⡼⢻⣥⣿⢸⣸⣿⢿⣾⣿⣿⣿⣿⠟⠀⠀⠘⢿⣿⣿⣿⠟⠀⢹⣾⣾⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠁⡿⢻⢟⣿⣿⣷⡄⠙⠿⠿⠿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⢋⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠈⠁⢸⠟⡿⣿⣿⡇⠀⠀⠀⠀⢀⣠⠤⠐⠒⠒⠒⠢⡄⠀⢀⣯⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠁⠈⢦⣽⡀⠀⠀⣴⢋⣤⣴⣶⣿⣿⡿⣿⡇⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣄⠀⠸⣿⢟⡏⠝⠒⢓⣣⠟⢁⣴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡷⣄⡈⠙⠛⠋⠉⠁⣀⡴⣻⣿⣶⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣶⣶⣤⣼⡧⠿⣙⣶⣶⣶⣶⣾⣿⣧⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣀⣠⣿⠿⣿⣿⣿⣷⠀⠈⠳⢿⣋⣿⣿⡿⠛⠁⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣧⣝⢿⣿⣿⠀⠠⣀⠀⠈⠉⠉⢰⡆⠀⢋⣿⣴⣿⣿⣿⣾⣿⣿⡀⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠹⡆⠀⠀⠀⣾⠀⠀⣸⣿⣿⣿⣿⡿⠋⢸⣿⣇⠀⠀⠀⠀⠀⠀      ",
			"     ⠀⠀⠀⠀⠀⠀⢐⣿⣿⣿⣦⣝⣿⣿⣿⣿⣿⣿⣿⣿⣄⠑⠀⠀⠀⠘⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠶⣤⣄⠀⠀      ",
			"     ⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⢀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⣿⣌⣇⠀      ",
			"     ⠀⠀⠀⣠⠏⢉⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡗⠄⠠⠋⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣿⣿⣿⡆      ",
			"     ⢀⣠⠞⣱⣾⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇      ",
			"                                                       ",
			"           | But is EMACS the better editor? |         ",
			"                                                       ",
			"                   |  Nah I'd VIM  |                   ",
		}

		vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ffffff" }) -- Set custom header color
		dashboard.section.header.opts.hl = "DashboardHeader"

		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button(
				"f",
				"  > Find file",
				":cd $HOME/Documents/programming/projects | Telescope find_files<CR>"
			),
			dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "  > Settings", ":cd $HOME/.config/nvim | Telescope find_files <CR>"),
			dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
			dashboard.button("h", "  > Check Health", ":checkhealth<CR>"),
			dashboard.button("m", "󰌌  > Mappings", ":WhichKey<CR>"),
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

		-- Function to get the max string width
		local function get_max_width(...)
			local max_width = 0
			for _, str in ipairs({ ... }) do
				local str_width = vim.fn.strdisplaywidth(str)
				if str_width > max_width then
					max_width = str_width
				end
			end
			return max_width
		end

		-- Function to center a string
		local function center_string(str, width)
			local str_width = vim.fn.strdisplaywidth(str)
			if str_width >= width then
				return str
			end
			local total_padding = width - str_width
			local left_padding = math.floor(total_padding / 2)
			local right_padding = total_padding - left_padding
			return string.rep(" ", left_padding) .. str .. string.rep(" ", right_padding)
		end

		-- Set the random quote and the date/time in the footer, centered
		local max_width = get_max_width(random_quote, date_time)
		local centered_quote = center_string(random_quote, max_width)
		local centered_date_time = center_string(date_time, max_width)

		-- Set the final footer
		dashboard.section.footer.val = centered_quote .. "\n" .. centered_date_time
		alpha.setup(dashboard.config)
		-- disable folding on alpha buffer
		vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
    ]])
	end,
}
