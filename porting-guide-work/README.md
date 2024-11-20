# Ubuntu Touch Porting Guide Development

This repository contains the development version of the modernized Ubuntu Touch porting guide.

## Setup Instructions

1. Install dependencies:
```bash
pip install sphinx furo sphinxext-rediraffe
```

2. Clone the repository:
```bash
git clone https://github.com/your-username/porting-guide
cd porting-guide
```

3. Build the documentation:
```bash
cd porting-guide-work
make html
```

4. View the documentation:
- Open `_build/html/index.html` in your web browser
- Navigate through sections using the sidebar

## Review Guidelines

Please review:
- Technical accuracy
- Clarity of instructions
- Logical flow between sections
- Completeness of each section
- Cross-references and navigation

Submit feedback through:
- GitHub issues for specific problems
- Pull requests for suggested improvements
- Comments on the PR for general feedback

## Building Troubleshooting

If you encounter build errors:
- Ensure all dependencies are installed
- Check Python version (3.6+ required)
- Verify directory structure matches repository
- Check console output for specific error messages
