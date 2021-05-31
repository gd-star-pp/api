import aiohttp
import aiohttp_jinja2 # it doesnt work unless this is here idk why
import router
import os

port = 6943

os.chdir(os.path.dirname(os.path.realpath(__file__)))

app = aiohttp.web.Application()

def main():
    router.add_all_routes(app)
    aiohttp.web.run_app(app, port=port)
    
if __name__ == "__main__":
    main()
