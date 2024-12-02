# Ubuntu Touch Porting Guide Development

This repository contains the development version of the modernized Ubuntu Touch porting guide.
The guide is being reworked by Ari Börde Kröyer, based on the current guide and the Halium Generic 
Adaptation Build Tools, and using AI assistance. 

# Notes to the Reader

My end goal is that this version of the guide can become a drop-in replacement for the current
version of the guide, and serve to help and promote the porting effort. This will require a 
coordinated community effort, as I am not sufficiently technically knowledgeable and skilled to 
complete this task on my own.

I therefore ask the reader to keep in mind that what you are seeing is an unfinished product which
may very well contain factual mistakes and errors, and that your ideas and feedback are both welcome 
and needed.

I am making the first version available on November 21, 2024. In an early phase, I encourage readers 
to discuss this project on Telegram, in the UBports Porting group (https://t.me/ubports_porting). Feel 
free to tag me there when proposing ideas, pointing out errors, etc. Please keep in mind that I have
limited time to spend on this project, so my responses might come with some delay.


## Setup Instructions

1. Install dependencies:
```bash
pip install sphinx furo sphinxext-rediraffe sphinxcontrib-mermaid
```

2. Clone the repository:
```bash
git clone https://github.com/abkro/docs.ubports.com porting-guide/
cd porting-guide
```

3. Build the documentation:
```bash
cd porting-guide-work
make html
```

4. View the documentation:
- In the `porting-guide-work/` folder, find and open `_build/html/index.html` in your web browser
- Navigate through sections using the sidebar

## Review Guidelines

Please review:
- Technical accuracy
- Clarity of instructions
- Logical flow between sections
- Completeness of each section
- Cross-references and navigation

Submit feedback through:
- Telegram, in the UBports Porting group (https://t.me/ubports_porting)

## Building Troubleshooting

If you encounter build errors:
- Ensure all dependencies are installed
- Check Python version (3.6+ required)
- Verify directory structure matches repository
- Check console output for specific error messages
