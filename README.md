# Carbon & Cashmere — Crypto Intelligence MCP Server

Professional crypto trading intelligence MCP server with **104 tools** covering real-time market data, ML signals, on-chain analytics, derivatives, historical data, and Bittensor subnet intelligence. Payment via **x402 USDC micropayments** on Base, Solana, Algorand, and Stellar — or a `$9.99/month` API key.

- **Live endpoint:** https://api.carbon-cashmere.de/mcp/
- **Server card:** https://api.carbon-cashmere.de/.well-known/mcp/server-card.json
- **Docs:** https://api.carbon-cashmere.de/docs
- **Status:** production, v3.0.0, 104 tools, 3 prompts, 2 resources

## What's inside

| Category | Tools |
|----------|-------|
| Real-time prices | 116 coins, OHLCV 15m/1h/4h/1d |
| ML signals | V3 tsfresh ensemble, per-coin models (BTC/ETH/SOL/KAS/TAO) |
| On-chain | Own Bitcoin Core + Kaspa + Bittensor nodes (no third-party delay) |
| Derivatives | Funding rates, open interest, liquidations, 730d history |
| Technicals | RSI/MACD/BB/ADX/ATR/OBV/VWAP across intervals |
| Volatility | GARCH(1,1), Parkinson, Garman-Klass, vol-regime |
| Cross-sectional | Rotation, relative strength, dispersion, correlation |
| Pairs/factors | Cointegration, OU half-life, beta-to-BTC, 4-factor decomposition |
| Research | Daily/weekly reports, narratives, track records |
| Bundles | BTC-ultimate, quant-research-suite, analytics-bundle |

Full tool list is published dynamically at `/.well-known/mcp/server-card.json`.

## Connecting

This repository contains a thin Docker wrapper that proxies stdio MCP to the hosted streamable-HTTP endpoint via [`mcp-proxy`](https://github.com/sparfenyuk/mcp-proxy).

### Docker

```bash
docker build -t carbon-cashmere-mcp .
docker run --rm -i carbon-cashmere-mcp
```

### Native (stdio client)

```bash
pip install mcp-proxy
mcp-proxy https://api.carbon-cashmere.de/mcp/
```

### Claude Desktop

```json
{
  "mcpServers": {
    "carbon-cashmere": {
      "command": "mcp-proxy",
      "args": ["https://api.carbon-cashmere.de/mcp/"]
    }
  }
}
```

### Smithery

Also available as a hosted remote server on Smithery:
https://smithery.ai/server/carboncashmere/cryptointelligence

## Pricing

- **Free tier:** `/v1/prices`, `/v1/fear-greed`, `/v1/status` (no payment)
- **Paid endpoints:** $0.003 – $0.35 per call via x402 micropayments
- **API key:** $9.99/month flat (Stripe)
- **AgentKit:** World ID verified agents get 3 free calls per endpoint

## License

MIT — see LICENSE
