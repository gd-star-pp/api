import aiohttp
from common.helpers import userhelper # type: ignore
from common.helpers import userhelper, geohelper # type: ignore
import secrets
from glob import tokens

async def authorise_post(r: aiohttp.web.RequestHandler):
    data = await r.json()
    username = data.get("username")
    password = data.get("password")
    
    if r.headers.get("X-Authentication-Token"):
        aiohttp.web.HTTPOk()
    
    user = await userhelper.get_user_by_name(username)
    if user.compare_pass(password):
        await user.update_last_active()
        user.ip = r.headers.get("CF-Connecting-IP", "0.0.0.0")
        user.country = await geohelper.get_country(user.ip)
        await user.save()
        
        token = secrets.token_urlsafe(32)
        
        tokens[token] = user
        
        return aiohttp.web.HTTPOk(headers={"X-Authentication-Token": token})
    return aiohttp.web.HTTPBadRequest()
