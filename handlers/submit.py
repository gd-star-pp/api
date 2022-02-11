import aiohttp
from glob import tokens, authorise_token, get_token

async def submit_post(r: aiohttp.web.RequestHandler):
    if not authorise_token(r):
        return aiohttp.web.HTTPUnauthorized(reason="Token is incorrect")
    token = get_token(r)
    
    data = await r.json()
    
    percent = data.get("percent")
    replay = data.get("replay")
    level_id = data.get("level_id")
    
    # database score
    user_id = tokens[token].id
    
    return aiohttp.web.HTTPNotImplemented()
