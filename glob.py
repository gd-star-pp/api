

tokens = {}

def authorise_token(request):
    token = request.headers.get("X-Authentication-Token")
    if not token in tokens:
        return False
    return True