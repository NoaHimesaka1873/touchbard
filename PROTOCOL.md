# Protocol
`touchbard` uses Unix socket for communication. The maximum payload side is 1KB per transmission.

The payload should be simple JSON with one object with one name/value pair for payload to daemon and two name/value pairs for payload from daemon.

For the payload to daemon:
| Key      | Value                   |
|----------|-------------------------|
| "fnmode" | int (range from 0 to 4) |

For the payload from daemon:
| Key       | Value                                                                  |
|-----------|------------------------------------------------------------------------|
| "status"  | string (either "SUCCESS" or "ERROR" depending on the execution result) |
| "message" | string (message describing result)                                     |

That's it! It's very simple!
