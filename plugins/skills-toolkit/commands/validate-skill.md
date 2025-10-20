---
description: Validate existing skill file for quality, security, and standards compliance
argument-hint: [skill-file-path]
---

Use the @skill-validator-agent to perform comprehensive autonomous validation of the skill file: $ARGUMENTS

**Agent's Role (Context-Heavy Analysis):**
- Locate and read the skill file at path: $ARGUMENTS
- Parse YAML frontmatter and markdown content structure
- Perform structural validation checking YAML syntax, required fields, and markdown formatting
- Conduct content quality evaluation assessing system prompt clarity, documentation standards, and professionalism
- Execute technical requirements assessment validating tool selection, capability declarations, and integration specifications
- Verify ecosystem integration compatibility checking Claude Code patterns, template references, and cross-skill compatibility
- Apply severity classifications objectively (PASS / NEEDS IMPROVEMENT / FAIL)
- Generate comprehensive validation report with executive summary, detailed findings, and actionable recommendations
- Provide clear production readiness determination (PRODUCTION READY / READY WITH IMPROVEMENTS / REQUIRES FIXES)
- Handle all reading, analysis, and validation checks autonomously

**Agent Output Required:**
The agent MUST return:
1. **Executive Summary**: Overall validation status (PASS/NEEDS IMPROVEMENT/FAIL), critical issues count, improvement opportunities count, and quick assessment
2. **Structural Validation Results**: YAML frontmatter validation, markdown structure compliance, and specific findings with severity
3. **Content Quality Results**: System prompt quality assessment, documentation standards evaluation, and specific findings with severity
4. **Technical Requirements Results**: Tool selection appropriateness, capability declaration accuracy, and specific findings with severity
5. **Ecosystem Integration Results**: Claude Code compatibility validation, cross-skill compatibility assessment, and specific findings with severity
6. **Recommendations**: Critical actions required (must fix), recommended improvements (should fix), and optional enhancements (nice to have)
7. **Final Determination**: Production readiness status with summary and next steps
8. **Commands to Execute**: If fixes are needed, provide exact Edit or Write commands to apply recommended changes (optional based on severity)

**Main Claude's Role (Execution):**
After receiving the agent's analysis:
- Display the comprehensive validation report
- Show executive summary with overall status
- Present detailed findings organized by validation domain
- Highlight critical issues requiring immediate attention
- List recommended improvements and optional enhancements
- If the agent provided fix commands, offer to execute them
- Confirm validation completion and next steps

**Workflow**: Agent analyzes → Main Claude executes → Changes actually happen
