# Protocol
`touchbard` uses Unix socket for communication. The maximum payload side is 1KB per transmission.

The payload should be simple JSON with one object with one name/value pair for payload to daemon and two name/value pairs for payload from daemon.

For the payload to daemon:
| Key      | Value                                                                                                    |
|----------|----------------------------------------------------------------------------------------------------------|
| "fnmode" | int (range from 0 to 4) or string (must be "read" and it will return string that can be convered to int) |

For the payload from daemon:
| Key       | Value                                                                               |
|-----------|-------------------------------------------------------------------------------------|
| "status"  | string (either "SUCCESS" or "ERROR" depending on the execution result)              |
| "message" | string (message describing result, will be one digit number if "fnmode" was "read") |

That's it! It's very simple!
