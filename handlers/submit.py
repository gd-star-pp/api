import aiohttp
from aiohttp_session import get_session
from glob import tokens

async def submit_post(r: aiohttp.web.RequestHandler):
    token = r.headers.get("X-Authentication-Token")
    if not token in tokens:
        return aiohttp.web.HTTPBadRequest()
    
    data = await r.post()
    
    percent = data.get("percent")
    replay = data.get("replay")
    level_id = data.get("level_id")
    
    # database score
    user_id = tokens[token].id
    
    return aiohttp.web.HTTPNotImplemented()