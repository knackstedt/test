npx -y @dynatrace-oss/dynatrace-mcp-server@latest --http --host 0.0.0.0 --port 3000

nginx -g 'daemon off;'

# command: ["npx"]
# args:
# [
# "-y",
# "@dynatrace-oss/dynatrace-mcp-server@latest",
# "--http",
# "--host", "$(HOST)",
# "--port", "$(PORT)"
# ]