import aiohttp
from glob import tokens, authorise_token

async def submit_post(r: aiohttp.web.RequestHandler):
    if not authorise_token(r):
        return aiohttp.web.HTTPUnauthorized()
    
    data = await r.json()
    
    percent = data.get("percent")
    replay = data.get("replay")
    level_id = data.get("level_id")
    
    # database score
    user_id = tokens[token].id
    
    return aiohttp.web.HTTPNotImplemented()
