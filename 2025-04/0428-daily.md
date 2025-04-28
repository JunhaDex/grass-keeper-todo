# Daily Todo List for 2025-04-28
Last updated: 2025-04-28 13:50:43

Use HTML, CSS, PostCSS (with `postcss-nested`), and Tailwind CSS. Design Login UI. Construct the layout for a responsive Login UI designed to adapt to both PC and mobile devices.

[Tech Stack]
- HTML
- CSS
- PostCSS
- postcss-nested
- Tailwind CSS

[UI Psudo Layout]
```layout
<main>
  <FlexContainer min-h-screen>
    <Login Box/>
  </FlexContainer>
  <Footer/>
</main>
```

[Primary Goals]
- Implement horizontal and vertical centering for the Login Box.
- On smaller screens (mobile):
  - Apply a 1rem margin to all sides of the Login Box.
  - Ensure the Login Box fills the available width within its parent container.
- On larger screens:
  - Constrain the Login Box width by applying a maximum width
- Ensure the primary content area (main) effectively enforces a minimum height of 100vh for the overall page structure

[Secondary Goals]
- Utilize tailwind css for layout, spacing, and responsiveness.
- Implement an entry transition where the Login Box animates in from the bottom on load.

[Constraints]
- Disregard the internal content or styling of the Login Box itself.
- Be specific and clear. Focus on goals.
- Do not generate configuration files for tailwindcss and postcss.

[Output format]
- login.html: shows the markup
- main.css: contains style in postcss (nested)
