import aiohttp
import os

port = 6943

os.chdir(os.path.dirname(os.path.realpath(__file__)))

app = aiohttp.web.Application()

def main():
    aiohttp.web.run_app(app, port=port)
    
if __name__ == "__main__":
    main()
