# BlindBoxShop -- Designer Vinyl Chase-Odds & Precision 0.01g Weight Reference Engine

[![Official Website](https://img.shields.io/badge/Website-blindboxshop.com-blue)](https://blindboxshop.com)
[![Homebrew Tap](https://img.shields.io/badge/Homebrew_Tap-AbigailDavised%2Fblindboxshop-orange)](https://github.com/AbigailDavised/homebrew-blindboxshop)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE)

Statistical probability and collector verification CLI for **[blindboxshop.com](https://blindboxshop.com)**. Models hypergeometric (sealed whole-case) vs binomial (loose single-box) secret/chase pull probabilities (`1/72`, `1/144`, `1/288`), 0.01g pocket-scale mass tolerance bands across 120+ series, and EAN-13 / holographic authenticity checks.

## Homebrew Installation

```bash
brew tap AbigailDavised/blindboxshop
brew install blindboxshop-cli
```

## CLI Quick Usage

```bash
# Display help and verified endpoints
blindboxshop-cli --help

# Output domain technical specification matrix as structured JSON
blindboxshop-cli --specs

# Output verified production endpoints as JSON
blindboxshop-cli --routes
```

---

## Chase Figure Pull Probability & Sealed Case Statistical Reference

| Rarity Tier | Single-Box Odds (p) | 12-Box Case Pull Rate | 50% Cumulative Threshold | 90% Cumulative Threshold |
| :--- | :--- | :--- | :--- | :--- |
| Standard Regular (1/12) | 8.33% | 100.0% (guaranteed in sealed case) | 1 sealed case / 8 loose | 27 loose boxes |
| Standard Secret (1/72) | 1.39% | 16.67% (1 per 6 master cases) | 50 loose boxes | 165 loose boxes |
| Super Secret (1/144) | 0.69% | 8.33% (1 per 12-case master carton) | 100 loose boxes | 331 loose boxes |
| Ultra Chase (1/288) | 0.35% | 4.17% (1 per 24 cases) | 199 loose boxes | 662 loose boxes |

## Core Engineering & Domain Architecture

- **Binomial vs Hypergeometric Pull Modeling**: Distinguishes independent loose retail pulls (`1 - (1 - p)^n`) from sealed master-carton sampling without replacement.
- **0.01g Gram-Scale Mass Profiling**: Accounts for silica-gel desiccant packet variance (`+/- 0.35g`) and foil bag batch deltas when comparing unopened box weights.

## Verified Production Tools & Reference Endpoints

| Module / Resource | Canonical URL | Direct Access |
| :--- | :--- | :--- |
| **BlindBoxShop Primary Workbench** | `https://blindboxshop.com/` | [Launch Workbench](https://blindboxshop.com/) |
| **0.01g Blind Box Weight Database & Series Scanner** | `https://blindboxshop.com/scanner` | [Open Tool](https://blindboxshop.com/scanner) |
| **Designer Toy Brands & IP Series Directory** | `https://blindboxshop.com/brands` | [Open Tool](https://blindboxshop.com/brands) |
| **Official Retail Store & Roboshop Vending Locator** | `https://blindboxshop.com/stores` | [Open Tool](https://blindboxshop.com/stores) |
| **Authentic vs Counterfeit Inspection & Weighing Guides** | `https://blindboxshop.com/guides` | [Open Tool](https://blindboxshop.com/guides) |
| **Collector Pull Checklist & Trade Card Builder** | `https://blindboxshop.com/my-collection` | [Open Tool](https://blindboxshop.com/my-collection) |

## License

Released under the [MIT License](LICENSE) -- [blindboxshop.com](https://blindboxshop.com).
