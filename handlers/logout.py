import aiohttp
from common.helpers import userhelper # type: ignore
from glob import tokens

async def logout_post(r: aiohttp.web.RequestHandler):
    
    token = r.headers.get("X-Authentication-Token")
    
    if token:
        tokens.pop(token)
        return aiohttp.web.HTTPOk("Logged out")
    
    return aiohttp.web.HTTPBadRequest("No token provided")