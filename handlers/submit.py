import aiohttp

async def submit_post(r: aiohttp.web.RequestHandler):
    data = await r.post()
    
    return aiohttp.web.HTTPNotImplemented()