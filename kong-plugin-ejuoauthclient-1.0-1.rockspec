package = "kong-plugin-ejuoauthclient"
version = "1.0-1"
source = {
   url = "git://github.com/nixuw/ejuoauthclient",
   tag = "1.0",
}
description = {
   summary = "OAuth client plugin",
   detailed = [[
      Help client to get the token.
   ]],
   homepage = "https://github.com/nixuw",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.ejuoauthclient.handler"] = "kong/plugins/ejuoauthclient/handler.lua",
      ["kong.plugins.ejuoauthclient.schema"] = "kong/plugins/ejuoauthclient/schema.lua"
     },

   }

