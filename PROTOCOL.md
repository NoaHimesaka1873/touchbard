# Protocol
`touchbard` uses Unix socket for communication. The maximum payload side is 1KB per transmission.

The payload should be simple JSON with one object with one name/value pair for payload to daemon and two name/value pairs for payload from daemon.

For the Protocol V1 payload to daemon:
| Key      | Value                                                                                                    |
|----------|----------------------------------------------------------------------------------------------------------|
| "fnmode" | int (range from 0 to 4) or string (must be "read" and it will return string that can be convered to int) |

For the Protocol V2 payload to daemon:
| Key         | Value                                                                                                                                      |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| "fnmode"    | int (Must be 9 for backward compatibility)                                                                                                 |
| "version"   | int (2 since it's Protocol V2)                                                                                                             |
| "operation" | string ("read" (read from hardware), "readcfg" (read from config file), "writecfg" (write to config file), or "write" (write to hardware)) |
| "key"       | string (key to read or write (available options: "fnmode", "idle_timeout", or "dim_timeout"))                                              |
| "value"     | int (value to write, of course not required when "operation" is "read")                                                                    |


Value and its behavior for "idle_timeout":
| Value                      | Behavior               |
|----------------------------|------------------------|
| -1                         | Always on              |
| -2 or 0                    | Always off             |
| 1 or higher (default: 300) | Idle after give second |


Value and its behavior for "dim_timeout" (All behavior happens right before before going to idle, except 0):
| Value        | Behavior                                     |
|--------------|----------------------------------------------|
| -2 (default) | Dim for about a second, and idle immediately |
| -1           | Fade out                                     |
| 0            | Always dim unless idle                       |
| 1 or higher  | Dim after given second                       |

For the Protocol V1 payload from daemon:
| Key       | Value                                                                               |
|-----------|-------------------------------------------------------------------------------------|
| "status"  | string (either "SUCCESS" or "ERROR" depending on the execution result)              |
| "message" | string (message describing result, will be one digit number if "fnmode" was "read") |

For the Protocol V2 payload from daemon:
| Key       | Value                                                                                                                               |
|-----------|-------------------------------------------------------------------------------------------------------------------------------------|
| "status"  | string (either "SUCCESS" or "ERROR" depending on the execution result)                                                              |
| "message" | string (message describing result)                                                                                                  |
| "value"   | int (only exists when "status" is "SUCCESS", will be echo when operation was "write", will return result when operation was "read") |

That's it! It's very simple for Protocol V1! (Not so simple for Protocol V2)
