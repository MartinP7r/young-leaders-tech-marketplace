# Skills Toolkit for Claude Code

**Version**: 1.0.0
**Author**: Young Leaders Tech
**License**: MIT

## Overview

**Skills Toolkit** is a comprehensive plugin for Claude Code that provides everything you need to create, validate, and manage Claude Code skills. It includes intelligent agents, interactive commands, and professional templates to make skill creation fast, consistent, and high-quality.

## What's Included

### 🤖 2 Intelligent Agents

#### skill-creator-agent
Interactive guide for creating Claude Code skills with:
- 5-phase creation workflow
- Description engineering guidance (WHEN/WHEN NOT patterns)
- PII validation and security checks
- Template-based structure generation
- Quality validation before finalization

#### skill-validator-agent
Autonomous professional validator that checks:
- YAML frontmatter and markdown structure
- Content quality and description effectiveness
- PII detection (emails, phones, sensitive data)
- Security compliance
- Claude Code ecosystem compatibility

### ⚡ 3 Slash Commands

#### `/create-skill`
Launch the interactive skill creation workflow:
```
/create-skill stakeholder
/create-skill ground-truth
/create-skill product
/create-skill initiative
```

The skill-creator-agent guides you through requirements gathering, description engineering, structure generation, and validation.

#### `/validate-skill`
Validate existing skills for quality and security:
```
/validate-skill /path/to/SKILL.md
```

Get comprehensive reports with:
- Structure validation (YAML, markdown)
- Content quality scoring
- PII detection results
- Actionable recommendations
- Severity classifications (PASS/NEEDS IMPROVEMENT/FAIL)

#### `/list-skills`
Discover available skills organized by scope:
```
/list-skills
```

Shows personal, project, and shared skills with metadata.

### 📋 4 Professional Templates

All templates include:
- Description engineering guidance
- Complete placeholder structures
- Validation checklists
- Security guidelines (zero PII)
- Usage examples

#### Stakeholder Template
For team/person context on specific projects:
- Roles, goals, pain points
- Communication preferences
- Decision-making patterns

#### Ground Truth Template
For verifiable, canonical reference documentation:
- Canonical definitions
- Verified facts and metrics
- Process flows and state machines
- Validation criteria
- Error codes and messages

#### Product Context Template
For product vision, goals, and constraints:
- Vision and mission
- Target users and personas
- Goals and success metrics
- Features and capabilities
- UX principles

#### Initiative Overview Template
For cross-functional initiative coordination:
- Charter and scope
- Work streams and milestones
- Cross-team coordination
- Dependencies and risks
- Status tracking

## Installation

### Quick Install

```bash
cd skills-toolkit-plugin
./install.sh
```

The installer will:
1. Detect your Claude Code configuration directory
2. Install agents to `.claude/agents/`
3. Install commands to `.claude/commands/`
4. Install skill templates to `.claude/skills/shared/`
5. Verify installation success

### Manual Installation

```bash
# Install agents
cp agents/*.md ~/.claude/agents/

# Install commands
cp commands/*.md ~/.claude/commands/

# Install templates
cp -r skills/shared/* ~/.claude/skills/shared/
```

### Verify Installation

```bash
# Check agents
ls ~/.claude/agents/skill-*

# Check commands
ls ~/.claude/commands/*-skill.md

# Test a command
/list-skills
```

## Quick Start

### Create Your First Skill

```
/create-skill stakeholder
```

The skill-creator-agent will guide you through:
1. **Requirements Gathering** - Define skill name, scope, and purpose
2. **Description Engineering** - Craft WHEN/WHEN NOT triggers
3. **Structure Generation** - Generate SKILL.md with proper format
4. **Validation** - Check for PII, quality, and security
5. **Finalization** - Get complete, ready-to-use SKILL.md

### Validate Existing Skills

```
/validate-skill ~/.claude/skills/projects/my-project/SKILL.md
```

Get a comprehensive report:
- Overall status (PASS/NEEDS IMPROVEMENT/FAIL)
- Detailed findings by domain
- Actionable recommendations
- Severity classifications

### Browse Available Skills

```
/list-skills
```

See all your skills organized by:
- Personal skills (`~/.claude/skills/personal/`)
- Project skills (`.claude/skills/projects/`)
- Shared templates (`.claude/skills/shared/`)

## Key Features

### Description Engineering

The toolkit guides you to create high-quality skill descriptions with:

**WHEN Triggers** - Specific terms users will mention:
- Project/product names
- Domain keywords
- Use case terms

**WHEN NOT Exclusions** - Prevent contamination:
- Related but different projects
- General discussions
- Other teams/products

**Example**:
```yaml
description: Stakeholder context for Phoenix UX research when discussing user testing, research synthesis, or design validation. Auto-invoke when user mentions Phoenix, UX research stakeholders, or design team. Do NOT load for general UX discussions unrelated to Phoenix.
```

### PII Protection

Automatic detection of:
- Email addresses
- Phone numbers
- SSN/sensitive identifiers
- Personal names (contextual)

All templates include security checklists to ensure zero PII in skill content.

### Quality Validation

Multi-domain validation:
1. **Structure**: YAML frontmatter, markdown formatting
2. **Content**: Clarity, completeness, professionalism
3. **Technical**: Tool selection, capabilities, error handling
4. **Security**: PII detection, confidential data, allowed-tools

### Hybrid Pattern Architecture

Commands follow the proven hybrid pattern:
- **Agents analyze**: Read files, validate, generate recommendations
- **Main Claude executes**: Write files, display reports, apply fixes
- **Clear separation**: Agent analyzes → Main Claude executes → Changes happen

## Usage Examples

### Example 1: Create Stakeholder Skill

```
User: /create-skill stakeholder

skill-creator-agent: Let's create a stakeholder skill. What project is this for?

User: Phoenix UX Research

skill-creator-agent: Great! What specific areas should this skill cover?

User: User testing, research synthesis, design validation

skill-creator-agent: Perfect. What terms should trigger this skill?

User: Phoenix, UX research, design team

[Agent guides through description engineering, structure generation, validation]

skill-creator-agent: ✅ Skill creation complete!
File: .claude/skills/projects/phoenix/stakeholders/SKILL.md
Validation: PASSED (95/100)

Main Claude: [Writes SKILL.md file to specified location]
```

### Example 2: Validate Before Production

```
User: /validate-skill .claude/skills/projects/phoenix/stakeholders/SKILL.md

skill-validator-agent:
================================================================================
SKILL VALIDATION REPORT
================================================================================

Overall Status: ✓ PASS

Structure: ✓ PASS
Content Quality: ✓ PASS (92/100)
Security: ✓ PASS (Zero PII detected)
Integration: ✓ PASS

Recommendation: Production-ready. Optional improvements available.
================================================================================
```

### Example 3: Browse All Skills

```
User: /list-skills

Output:
Personal Skills (2):
└── user-manual/ - Work preferences and communication style
└── learning-goals/ - Current learning objectives

Project Skills (3):
└── phoenix/stakeholders/ - Phoenix UX research team context
└── easypay/ground-truth/ - Payment processing error codes
└── pricing/initiative/ - Pricing innovation initiative overview

Shared Templates (4):
└── stakeholder-templates/ - Template for stakeholder skills
└── ground-truth-template/ - Template for ground truth skills
└── product-context-template/ - Template for product context skills
└── initiative-overview-template/ - Template for initiative skills
```

## Best Practices

### When to Use Each Template

**Stakeholder Template**: Use when you need context about specific teams, roles, or people on a project
- Team objectives and decision patterns
- Communication preferences
- Pain points and success metrics

**Ground Truth Template**: Use for verifiable facts and canonical reference data
- Error codes and definitions
- Process flows and state machines
- Validation criteria and business rules
- Metrics and verified facts

**Product Context Template**: Use for product vision and strategic context
- Product goals and constraints
- Target users and personas
- Feature capabilities
- UX principles

**Initiative Template**: Use for cross-functional coordination
- Initiative charters and scope
- Work streams and milestones
- Dependencies and risks
- Status tracking

### Description Quality Tips

**DO**:
- ✅ Include specific trigger terms
- ✅ Add explicit WHEN NOT boundaries
- ✅ Use possessive pronouns for personal skills
- ✅ Quantify metrics (">95% accuracy" not "high accuracy")

**DON'T**:
- ❌ Use generic descriptions ("Provides information about...")
- ❌ Skip WHEN NOT exclusions
- ❌ Include PII (names, emails, phones)
- ❌ Mix scopes (keep personal/project/shared separate)

### Security Guidelines

**Always**:
- Use roles instead of names ("Product Owner" not "Jane Smith")
- Use placeholders for sensitive data (`[STAKEHOLDER_NAME]`)
- Set `allowed-tools: []` for reference skills
- Review skills for business-confidential information

**Never**:
- Include emails, phone numbers, or SSN
- Include specific revenue/budget numbers
- Include unreleased features or roadmaps
- Mix personal information with team context

## Troubleshooting

### Agent Not Responding

**Problem**: Agent doesn't respond to tag
**Solution**:
```bash
# Verify installation
ls ~/.claude/agents/skill-creator-agent.md
ls ~/.claude/agents/skill-validator-agent.md

# Restart Claude Code if needed
```

### Command Not Found

**Problem**: Slash command not recognized
**Solution**:
```bash
# Verify command installation
ls ~/.claude/commands/create-skill.md
ls ~/.claude/commands/validate-skill.md
ls ~/.claude/commands/list-skills.md

# Restart Claude Code to reload commands
```

### Template Not Loading

**Problem**: Template referenced but not found
**Solution**:
```bash
# Verify templates installed
ls ~/.claude/skills/shared/

# Should show:
# - stakeholder-templates/
# - ground-truth-template/
# - product-context-template/
# - initiative-overview-template/
```

### Validation Errors

**Problem**: Skill validation reports errors
**Solution**: Review the validation report for specific issues:
- **PII detected**: Remove emails, phones, names
- **Description quality low**: Add WHEN/WHEN NOT patterns
- **Structure issues**: Check YAML frontmatter syntax
- **Security concerns**: Review allowed-tools and confidential data

## Integration with Other Tools

### Works With

- **Claude Code**: All versions with skill support
- **Git**: Version control for skill files
- **Markdown editors**: Edit skills with any markdown editor
- **CI/CD**: Integrate `/validate-skill` in pipelines

### Future Integrations

- Marketplace publishing (when available)
- Team collaboration features
- Automated freshness checking
- Usage analytics

## Technical Details

### Dependencies

**Required**:
- Claude Code with skills support
- Read, Grep, Glob, TodoWrite tools

**Optional**:
- Git (for version control)
- jq (for JSON processing)

### Compatibility

- **Platform**: macOS, Linux, Windows (WSL)
- **Claude Code Version**: All versions with skill support
- **Shell**: bash, zsh

### Performance

- **Skill Creation**: ~2-5 minutes with interactive guidance
- **Validation**: ~5-30 seconds per skill
- **Template Loading**: Instant

## Support & Contributing

### Getting Help

1. Review this README and troubleshooting section
2. Check validation reports for specific guidance
3. Review template examples and usage patterns
4. Open an issue on GitHub (if applicable)

### Reporting Issues

When reporting issues, include:
- Claude Code version
- Operating system
- Complete error message or validation report
- Steps to reproduce
- Expected vs actual behavior

### Contributing

Contributions welcome! Consider:
- New skill templates
- Validation improvements
- Documentation enhancements
- Bug fixes and optimizations

## Version History

### v1.0.0 (2025-10-20)
- Initial release
- 2 agents: skill-creator-agent, skill-validator-agent
- 3 commands: /create-skill, /validate-skill, /list-skills
- 4 templates: stakeholder, ground-truth, product, initiative
- Comprehensive validation framework
- PII detection and security checks
- Professional documentation

## License

MIT License - See LICENSE file for details

## Credits

**Created by**: Young Leaders Tech
**Powered by**: Claude Code
**Built with**: agent-builder toolkit

---

**Ready to create professional, production-ready Claude Code skills with automated validation and quality assurance.**
