


tokens = {}

def authorise_token(request):
    token = request.headers.get("X-Authentication-Token")
    if not token in tokens:
        return False
    return True

def get_token(request):
    token = request.headers.get("X-Authentication-Token")
    if not token in tokens:
        raise aiohttp.web.HTTPUnauthorized(reason="Token is incorrect")
    return token