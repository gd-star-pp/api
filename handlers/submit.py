import aiohttp
from glob import tokens

async def submit_post(r: aiohttp.web.RequestHandler):
    token = r.headers.get("X-Authentication-Token")
    if not token in tokens:
        return aiohttp.web.HTTPBadRequest()
    
    data = await r.json()
    
    percent = data.get("percent")
    replay = data.get("replay")
    level_id = data.get("level_id")
    
    # database score
    user_id = tokens[token].id
    
    return aiohttp.web.HTTPNotImplemented()
