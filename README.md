# VSCode as a 21st-Century Blackboard

- Zoom, VSCode, GitHub, Markdown, and Mermaid combine to create a truly 21st-century blackboard.

## Objectives

<!-- markdownlint-disable MD038 -->
| Syntax | Meaning |
| :---- | :----: |
| `#` | Document Title |
| `##` | Section title |
| `###` | Subsection title |
| `####` | Sub-subsection title |
| `#####` | Sub-sub-subsection title |
| `######` | Sub-sub-sub-subsection title |
| `---` | Separator between each slide |
| `-` | Top-level outline |
| ` -` | Second level outline |
| `  -` | Third level outline |
| `   -` | Fourth level outline |
| `    -` | Fifth level outline |
| `     -` | Sixth level outline |
| `_italics_` | _italics_ |
| `**bold**` | **bold** |
| `` ` `` code `` ` `` | `code` |
| `$$\sum_{i=1}^{n} i = \frac{n(n+1)}{2}$$` | $$\sum_{i=1}^{n} i = \frac{n(n+1)}{2}$$ |
| `- [ ]` To do item | - ☐ To Do item |
| `- [x]` Completed item | - ☑ Completed Item |
| ` ```csharp ` | Start a block of sample C# code |
| ` ```java ` | Start a block of sample Java code |
| ` ```javascript ` | Start a block of sample JS code |
| ` ```sql ` | Start a block of sample SQL code |
| ` ```mermaid ` | Start a Mermaid diagram block |
| ` ``` `| End of block |
<!-- markdownlint-enable MD038 -->

---

- By simultaneously typing and talking, we can offer multiple modalities: to auditory learners, visual learners, and those for whom English is not their first language.
- We can model for our students good use of VSCode, Markdown, Mermaid, and GitHub.
  - All of these will be useful for their capstone projects.
- With GitHub giving excellent temporal information (e.g. what has changed since yesterday), the content may be organized thematically.
  - We can model for our students use of nested headings and nested outlines to systematically structure and organize large quantities of information.
  - We can start each day by comparing the repo to its state a day ago...this is a natural way to recap everything written since the prior day.
  - Students may equally do this on their own, for whatever time periods they desire.

---

## Step-by-step

- [ ] For each cohort, create a single GitHub repo, e.g. <https://github.com/2023-Spring-Cohort/JavaBlackboard>.
  - [ ] Clone this repo onto each instructor's laptop.
  - [ ] Normally, all work can be done on the `main` branch, though you may of course use feature branches if you desire, e.g. if you are preparing lessons which shouldn't be visible to students yet.
  - [ ] As always, do a `git pull` before you start and a `git push` after.
  - [ ] There's nothing wrong with just using `README.md`, though you may of course split into different files if you wish, or if your initial file grows so large that rendering takes too long.
- [ ] To use the blackboard:
  - [ ] Share your screen over Zoom.
  - [ ] Open the markdown file, and navigate to the proper location in the file.
  - [ ] When you would write on a blackboard (e.g. giving definitions or examples), just talk out loud as you type in the the screen.
    - [ ] Introduce new sections using header syntax `##`, `###`, `####`, etc.
      - [ ] Use a `---` line to separate pages, e.g. for <http://sli.dev>.
    - [ ] Make heavy use of nested bullet points to organize your thoughts.
    - [ ] You have the ability to _edit_ existing explanations to make them clearer.
  - [ ] Super-simple code samples can be just set off with triple backquotes, but you do have a VSCode project and you can have an actual source tree in the same project and simply create real examples as necessary.
  - [ ] If you wish, enable markdown preview to show students what the rendered page would be.

---

## Pedagogy

- Invite students to give constructive feedback on your explanations and examples.

## Fancier Markdown

### Code blocks

- Surround with triple backquotes.
- Specify the language for appropriate syntax highlighting.

### Tables

- See the Markdown syntax table above.

---

### Diagrams

- Simplest: Mind maps (`mindmap`)

  ```mermaid
  %%{init: {'theme':'forest'}}%%

  mindmap
   VSCode as a 21st Century Blackboard
    Multiple Modalities
     Visual
     Auditory
     Graphical
    Multiple Dimensions
     Thematic Organization
     Chronological History
    Diagrams As Code
     Mermaid
    GitHub README
     Capstone documentation
  ```

---

- Also Simple: Interaction diagrams (`sequenceDiagram`)

  ```mermaid
  sequenceDiagram
   participant Teacher
   participant VSCode
   participant GitHub
   participant Student
   Student ->> Teacher: Questions
   Teacher ->> VSCode: Typing Into Markdown
   VSCode ->> Student: Zoom Screen Share
   VSCode ->> GitHub: Pushing Improvements
   GitHub ->> Student: Revision History
   VSCode ->> Student: Slide Show
  ```

---

- Also Simple: Class diagrams (`classDiagram`)

  ```mermaid
  classDiagram
   %% An iterable is anything on the right side of a for loop
   class Iterable~E~ {
    <<interface>>
    +iterator()
   }

   %% Collections add the notion of size
   class Collection~E~ {
    <<interface>>
    +isEmpty()
    +size()
   }

   %% Sets add the notion of "containing"
   class Set~E~ {
    <<interface>>
    +add(E e)
    +contains(E e)
    +remove(E e)
   }

   %% SortedSets only make sense when you can ask "e1 < e2"?
   class SortedSet~E extends Comparable~ {
    <<interface>>
    +first() : E
    +last() : E
   }

   %% HashSet is basically a HashMap without a value
   class HashSet~E~ {
    <<class>>
   }
 
   class TreeSet~E~ {
    <<class>>
   }

   %% Lists know about indexes
   class List~E~ {
    <<interface>>
    get(int index) : E
   }
 
   %% ArrayLists are backed by arrays and are the standard list
   class ArrayList~E~ {
    <<interface>>
   }

   %% LinkedLists are implemented with linked lists and work very well in specific cases
   class LinkedList~E~ {
    <<interface>>
   }
  
   Iterable <|-- Collection
   Collection <|-- Set
   Collection <|-- List
   Set <|-- HashSet
   Set <|-- SortedSet
   SortedSet <|-- TreeSet
   List <|-- ArrayList
   List <|-- LinkedList
  ```

- Also Simple: State diagrams (`stateDiagram-v2`)

  ```mermaid
  stateDiagram-v2
    Zero : No relevant 7's
    One : Just past the 7
    Two : Two past the 7
    [*] -->Zero
    Zero-->One : '7'
    One-->TRUE : '7'
    One-->Two : 'Not 7'
    Two-->TRUE : '7'
    Zero-->Zero : 'Not 7'
    Two-->Zero : 'Not 7'
    Two-->FALSE : No more data
    One-->FALSE : No more data
    Zero-->FALSE : No more data
    TRUE-->[*]
    FALSE-->[*]

    note right of TRUE: codingbat.com/prob/p168357
  ```

---

- Super Flexible: Nodes and Arrows (`graph`)

  ```mermaid
  %%{init: {"flowchart": {"curve": "catmullRom"}}}%%
  graph TB;
  Think-->|Code is difficult to read or think about|MakeImprovements["Increase readability or reduce duplication. No tests change."]
  classDef thinkStyle fill:#f77,color:#000
  classDef pullRequestStyle fill:#77F,color:#000
  classDef allTestsPassStyle fill:#7F7,color:#000
  class Think thinkStyle;
  Think-->CreateANewClass["Create a new empty class and corresponding test class."]
  CreateANewClass-->DescribeANewClass["/** Describe the class in a sentence */"]
  DescribeANewClass-->AddATestToAnExistingTestClass
  Think==>|Identify desired behavior|AddATestToAnExistingTestClass["Add a new test"]
  Think-->|Reproduce Bug|AddATestToAnExistingTestClass
  Think-->|"All functionality required by the story is complete!"|CodeDone["Is the code clean?"]
  CodeDone-->PullRequest["Pull Request"]
  class PullRequest pullRequestStyle;
  CodeDone-->MakeImprovements
  AddATestToAnExistingTestClass==>NewTestFails["Verify the new test fails"]
  AllTestsPass==>|"Ratchet success. Commit to Git!"|Think["*Think* about what this class or interface should *do*"]
  class AllTestsPass allTestsPassStyle;
  MakeImprovements-->|"Fail cheaply! `git restore .`"|AllTestsPass
  MakeImprovements-->RenameAVariable
  RenameAVariable-->AllTestsPass
  MakeImprovements-->IntroduceInterface
  IntroduceInterface-->AllTestsPass
  MakeImprovements-->MoveLogicToParent
  MoveLogicToParent-->AllTestsPass
  MakeImprovements-->ExtractCodeToMethod
  ExtractCodeToMethod-->AllTestsPass
  NewTestFails==>WriteCode["Add simplest obvious code"]
  WriteCode==>AllTestsPass
  ```

---

### <http://sli.dev>

- Markdown can be displayed as slides on <http://localhost:3030> using the slidev library.
- Just separate slides with a `---` line.
- If the diagram is too large for the slide, surround with something like `<Transform :scale="0.6">`, e.g. <https://github.com/WeCanCodeIT/CleanCode/commit/5aebc278fe3307cef3590d3c08ea8d494d478697>
  - One can combine scaling with other CSS directives, e.g. `<Transform :scale="0.7" class="ZebraTable">` which can use bespoke CSS defined in a `style.css` file in the project (e.g., <https://github.com/WeCanCodeIT/CleanCode/blob/main/style.css>), e.g.,
    ```css
    .ZebraTable > table tr:nth-child(odd) td{
       background:#888888;
    }
    ```
  - These directives are simply ignored by GitHub rendering.
- Slides may be numbered by populating `global-top.vue` in the main project directory
  ```html
  <template>
    <Scroll/>
    <footer class="absolute bottom-0 left-0 right-0"><br/><small>©WeCanCodeIT 2023 --- <SlideCurrentNo/>/<SlidesTotal/></small><br/></footer>
  </template>
  ```
- Slides can have a logo (does not appear in PDF exports, though) by populating `style.css` in the main project directory.
  ```css
  footer {
    background-image: url("https://wecancodeit.org/wp-content/uploads/2022/07/Transitional-Logo-WCCI-We-Can-Code-IT-vector-e1658264307471.png");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: right top;
  }
  ```
- Create useful `npm` scripts in `package.json`. e.g.
  ```sh
  "scripts": {
    "build": "slidev build",
    "slides": "slidev --open lessons.md",
    "modernBlackboard": "slidev --open modernBlackboard.md",
    "exportPDF": "slidev export lessons.md",
    "exportDark": "slidev export lessons.md --dark --output lessons-export-dark.pdf",
    "exportSlides": "slidev export  --format md lessons.md"
  },
  ```
  - Or manually export page ranges `npx slidev export lessons.md --range=1,4,121-155 --output=W3D1-W3D5.pdf`