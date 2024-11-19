import sys
import os

project = 'Ubuntu Touch Porting Guide'
copyright = '2024, UBports Foundation'
author = 'UBports Documentation Team'

extensions = [
    'sphinx.ext.todo',
    'sphinx.ext.ifconfig',
    'sphinx.ext.autosectionlabel'
]

templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
language = 'en'
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store', '../*']
# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'monokai'
html_theme = "furo"
html_theme_options = {
    "sidebar_hide_name": True,
    "light_logo": "images/logo-light.svg",
    "dark_logo": "images/logo-dark.svg",
    "light_css_variables": {
        "font-stack": "ubuntu, sans-serif",
        "font-stack--monospace": "ubuntu-mono, Courier, monospace",
        "color-brand-primary": "#000000",
        "color-background-primary": "#F7F7F7",
        "color-sidebar-search-border": "transparent",
        "color-sidebar-search-background": "#F7F7F7",
        "color-sidebar-background": "#FFFFFF",
        "sidebar-search-icon-size": "1px",
        "color-sidebar-background-border": "transparent",
        "color-link": "var(--color-foreground-primary)",
        "color-link--hover": "var(--color-foreground-primary)",
        "color-link-underline": "var(--color-foreground-primary)",
        "color-link-underline--hover": "#E95420",
        "color-link--visited": "var(--color-link)",
        "color-link--visited--hover": "var(--color-link--hover)",
        "color-link-underline--visited": "var(--color-link-underline)",
        "color-link-underline--visited--hover": "var(--color-link-underline--hover)",
        "color-admonition-title--note": "var(--color-toc-item-text)",
        "color-admonition-title-background--note": "var(--color-sidebar-background)",
        "sidebar-caption-font-size": "1.6rem"
    },
    "dark_css_variables": {
        "color-brand-primary": "#EDEDED",
        "color-background-primary": "#141417",
        "color-sidebar-search-background": "#141417",
        "color-sidebar-background": "#1A1C1E"
    },
}
html_static_path = ['_static']
