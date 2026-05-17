*This project has been created as part
of the 42 curriculum by yasmail.*

# Description

## about
**Minitalk** is a project that demonstrates inter-process communication in Unix by sending signals from a client to a server. The server receives messages character by character using signals.

## goal
The goal of this project is to implement a simple communication protocol where the client sends ASCII characters **bit by bit** using UNIX signals (`SIGUSR1` and `SIGUSR2`). The server decodes the signals and prints the original message.

> **Note:** The server’s PID is required for the client to know where to send the signals.


# Instructions
## To compile the project, run:
```
$> make
```
## Start the server first. This process will print its PID:
```
$>./server
```
## Send a message from the client to the server:
```
./client [PID] [message]
```
PID: the ID of the server process

message: a string parameter to send the signal to the server

## Resources
-AI Assistance: ChatGPT was used to:

    -Explain how to shift and set bits for signal encoding
    
    -Clarify signal handling logic

    -Avoid common mistakes when reconstructing messages character by character

# Addition
## Features list
- Send messages from client to server using UNIX signals
- Character-by-character reconstruction
- Handles standard ASCII characters

