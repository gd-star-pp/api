import aiohttp

async def submit(r: aiohttp.web.RequestHandler):
    return aiohttp.web.HTTPOk()