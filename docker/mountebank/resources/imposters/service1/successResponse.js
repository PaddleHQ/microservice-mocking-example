() => {
    const token = 'T' + (new Date).getTime().toString() + Math.random().toString(36).substring(2);

    const body = {
        "data": {
            "service-name": "service 1",
            "unique_token": token
        }
    };

    return {
        headers: {
            'Content-Type': 'application/json'
        },
        statusCode: 200,
        body
    };
}