import asyncio
import json

import fastapi
import requests
import uvicorn as uvicorn
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    response = requests.get(
        'http://receive-test-svc:8081/'
    )
    return {"message": f"It is Sender! {json.loads(response.text)}"}


async def main():
    config = uvicorn.Config("main:app", port=8080)
    server = uvicorn.Server(config)
    await server.serve()


if __name__ == '__main__':
    asyncio.run(main())
