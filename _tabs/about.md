---
# the default layout is 'page'
icon: fas fa-info-circle
order: 5
---

Welcome to my personal website, where I showcase my **programming projects** and provide insights into my professional journey through my **Curriculum Vitae (CV)**. This site is designed to highlight the key milestones in my software development career and the various technologies I’ve worked with.

This site is organised into **two main categories**: **Programming Projects** and **Other Content**. These categories are designed to make it easy for you to find relevant content based on your interests. Here’s a breakdown of what you can find:

### Navigation Using Categories and Tags

To help you explore the content on my site, the content is organised into **two main categories**:

1. **Programming Projects**:
   - This category is **nested by programming language**. 
     - Each language group (e.g., Java, Python) contains a list of projects that were developed using that language.
     - **Example**:  
       - **Java**  
         - **Database Server**: A database server application written in Java.  
         - **[View Java Projects]({{ "/categories/java/" | relative_url }})**

2. **Other Content**:
   - This category includes content such as my **CV** and other posts related to professional development, tutorials, and tech insights.
     - You can explore more content in the **[Other]({{ "/categories/other/" | relative_url }})** section.


Each post or project can also be tagged with relevant keywords to help you filter and find content of interest, such as programming languages, tools, and project types.

### How This Website Was Made

This website was built using **Jekyll**, a simple, blog-aware static site generator. The content is written in **Markdown**, making it easy to maintain and update. The site uses the **Just the Docs** theme, which is clean and ideal for technical documentation and showcasing programming projects.

- **Development**:
  - The website’s content and layout are managed with **YAML front matter**, which organises posts and pages using categories and tags.
  - To allow for **personal customisation**, I’ve utilised **Jekyll includes** and **layout overrides**:
    - **Includes** are used to create reusable snippets of HTML, such as for the header, footer, and navigation elements, which are included across various pages for consistency.
    - **Layout overrides** allow me to customise the structure of certain pages and posts, such as adjusting the layout of project listings or the design of the CV page, ensuring that each section of the website has the desired appearance and functionality.

- **Deployment**:
  - The website is hosted on **GitHub Pages**, providing an easy and efficient way to deploy and maintain the site.
  - The source code for the site is available on GitHub, and updates can be made by simply pushing changes to the repository.

### Repository

You can view the source code for this website:

- [GitHub Repository: Project Portfolio](https://github.com/alexandermfisher/project-portfolio)