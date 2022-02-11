import aiohttp
from common.helpers import userhelper # type: ignore
from common.helpers import userhelper, geohelper # type: ignore
import secrets
import json
from glob import tokens, authorise_token

async def authorise_post(r: aiohttp.web.RequestHandler):
    try:
        data = await r.json()
    except json.decoder.JSONDecodeError:
        return aiohttp.web.HTTPBadRequest(reason="JSON body is not valid")
        
    username = data.get("username")
    password = data.get("password")
    
    if authorise_token(r):
        return aiohttp.web.HTTPOk(reason="Authorized")
    else:
        return aiohttp.web.HTTPUnauthorized(reason="Unauthorized")
    
    user = await userhelper.get_user_by_name(username)
    if user and user.compare_pass(password):
        await user.update_last_active()
        user.ip = r.headers.get("CF-Connecting-IP", "0.0.0.0")
        user.country = await geohelper.get_country(user.ip)
        await user.save()
        
        token = secrets.token_urlsafe(32)
        
        tokens[token] = user
        
        return aiohttp.web.HTTPOk(headers={"X-Authentication-Token": token}, reason="Authorization token created")
    return aiohttp.web.HTTPBadRequest("Invalid username or password")
