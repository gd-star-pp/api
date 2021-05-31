import aiohttp
import importlib

routes = {"/submit": "submit",
          "/database_level": "database_level",
          "/login": "login"}

def add_all_routes(app: aiohttp.web.Application):
    for route, modulename in routes.items():
        if route.startswith("_"): route = route.lstrip("_")
        modulepath = modulename.replace("/", ".")
        routesplit = modulename.split("/")
        if "_post" in routesplit[-1]:
            app.router.add_post(route, getattr(importlib.import_module("handlers." + modulepath.rstrip("_post")), routesplit[-1]))
        else:
            app.router.add_get(route, getattr(importlib.import_module("handlers." + modulepath), routesplit[-1]))