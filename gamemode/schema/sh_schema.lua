SCHEMA.name = "Allegory"
SCHEMA.author = "Cptnobvious"
SCHEMA.desc = "Allegory - Town of Salem."
SCHEMA.uniqueID = "allegory" -- Schema will be a unique identifier stored in the database.
-- Using a uniqueID will allow for renaming the schema folder.

-- Configure some stuff specific to this schema.
nut.currency.SetUp("ns", "ns")
nut.config.menuMusic = "http://7609.live.streamtheworld.com:80/977_SMOOJAZZ_SC"

nut.util.Include("sv_hooks.lua")
nut.util.Include("sh_flags.lua")