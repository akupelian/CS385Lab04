From golang:alpine
Copy src/fibonacci_number.go src/
workdir src/
cmd ["go", "run", "fibonacci_number.go"]
