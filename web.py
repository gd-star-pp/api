import aiohttp
import aiohttp_jinja2 # it doesnt work unless this is here idk why
from common import globals
import base64
import router
import os
import pyfiglet

port = 6943

os.chdir(os.path.dirname(os.path.realpath(__file__)))

app = aiohttp.web.Application()

async def async_main() -> None:
    """Configures all of the async elements of the server."""

    await globals.startup_init()


def main():
    print(pyfiglet.figlet_format("Lotus-api"))
    print("Starting server...")
    router.add_all_routes(app)
    globals.loop.run_until_complete(async_main())
    aiohttp.web.run_app(app, port=port)
    
if __name__ == "__main__":
    main()