import aiohttp
from common.helpers import levelhelper # type: ignore

async def database_level(r: aiohttp.web.RequestHandler):
    args = r.rel_url.query
    level_id = args.get("level_id")
    try: int(level_id)
    except ValueError: return aiohttp.web.HTTPBadRequest()
    if level_id:
        await levelhelper.database_level(int(level_id))
    else:
        return aiohttp.web.HTTPBadRequest()