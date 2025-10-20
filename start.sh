npx="npx -y @dynatrace-oss/dynatrace-mcp-server@latest --http --host 0.0.0.0 --port 3000"
nginx="nginx -g 'daemon off;'"

eval "${nginx}" &
eval "${npx}" &

wait $PID1
if (($? != 0)); then
    echo "ERROR: nginx exited with non-zero exitcode" >&2
    kill -9 $PID1
    exitcode=$((exitcode+1))
fi

# command: ["npx"]
# args:
# [
# "-y",
# "@dynatrace-oss/dynatrace-mcp-server@latest",
# "--http",
# "--host", "$(HOST)",
# "--port", "$(PORT)"
# ]