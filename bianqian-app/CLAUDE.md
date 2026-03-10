# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a structured knowledge base extracted from the PDF book "人人都能做到的便签整理术" (Everyone Can Do Sticky Note Organization) by 须藤由美. It is **not a code repository** — it contains structured knowledge units (SKUs) organized by type.

## Architecture

All content lives under a single top-level directory named after the source PDF. The structure uses three knowledge classification types:

- **factual/** — 25 factual knowledge units (sku_001 to sku_025), each containing a `header.md` (metadata) and `content.md` or `content.json` (knowledge content)
- **procedural/** — 10 procedural skills (skill_001 to skill_010), each containing a `header.md` and `SKILL.md` (step-by-step procedures)
- **relational/** — Domain-level knowledge graphs: `glossary.json` (term definitions), `label_tree.json` (hierarchical taxonomy), `relationships.json` (typed entity relationships), and `header.md`

The root-level `skus_index.json` is the master index listing all 37 SKUs with their IDs, names, classifications, paths, and descriptions.

## Key Conventions

- Content files use either `.md` (narrative) or `.json` (structured data) format depending on the knowledge type
- SKU IDs follow the pattern `sku_NNN` for factual units and `skill_NNN` for procedural units
- The `relational/` directory is a single aggregated SKU rather than per-item units
- All content is in Chinese (Simplified)
