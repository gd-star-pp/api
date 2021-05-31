import aiohttp
from common.helpers import userhelper # type: ignore

async def login(r: aiohttp.web.RequestHandler):
    args = r.rel_url.query
    username = args.get("username")
    password = args.get("password")
    usr = await userhelper.get_user_by_name(username)
    if usr.compare_pass(password):
        return aiohttp.web.HTTPOk()
    return aiohttp.web.HTTPBadRequest()