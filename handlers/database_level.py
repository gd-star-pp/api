import aiohttp

async def search(r: aiohttp.web.RequestHandler):
    return aiohttp.web.HTTPOk("a")