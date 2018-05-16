() => {
    const body = {
       data: {
           errors: {
               status: 404,
               code: 'mocked-endpoint-not-found',
               details: 'Mocked Endpoint Not Found'
           }
       }
    };

    return {
        headers: {
            'Content-Type': 'application/json'
        },
        statusCode: 404,
        body
    };
}