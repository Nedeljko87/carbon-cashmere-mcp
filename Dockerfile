FROM python:3.12-slim

# Carbon & Cashmere MCP Server — thin stdio proxy to hosted streamable-HTTP endpoint.
# The real server runs at https://api.carbon-cashmere.de/mcp/ — 104 tools, v3.0.0.

RUN pip install --no-cache-dir mcp-proxy==0.8.2

ENV MCP_URL=https://api.carbon-cashmere.de/mcp/
ENV PYTHONUNBUFFERED=1

# Default command: stdio ↔ streamable-HTTP bridge
CMD ["sh", "-c", "mcp-proxy \"$MCP_URL\""]
