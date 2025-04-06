## Title

*Please use [AP style title case](https://titlecase.com/). Acronyms should be all uppercase. Code elements such as keywords, function names, etc that appear in your title should have the case they would have when written in code. Subtitles should be set off with colons, not dashes, using a space after, but not before the colon. See also Boost library naming rules.
For example, "My Adventures With Boost.Asio: return to Sender"* 


Reflection-based JSON in C++ at Gigabytes per Second

## Abstract

*As it should appear in the program. About one to three paragraphs. This is your pitch to both the Program Committee and to potential attendees about why they should see your presentation. (Use the 'Comments' field below for remarks intended only for the PC.)
Try to answer the reader's questions, What will I learn? and Why is this important to me? To facilitate a double-blind review process, please avoid statements that remove all uncertainty about who you are*

JSON, or JavaScript Object Notation, has become a cornerstone for storing and exchanging data. Its appeal lies in its simplicity—human-readable text that elegantly captures structured data through attribute-value pairs and arrays: {"age": 5, "name": "Daniel", "toys": ["wooden dog", "little car"]}. JSON is intuitive yet powerful. But ingesting and producing JSON can turn into a performance choke point. In C++, it can be a tedious, error-prone task. Programmers wrestle with unexpected content, manually mapping data to and from native structures, all while striving for speed and safety.

With languages like Java, C#, Zig, Rust, or Python, JSON serialization and deserialization typically requires far less work. In particular, Rust's serde library blends convenience with high speed. We wish for a C++ library to automatically handle JSON production and consumption, seamlessly tied to native data structures. It is not merely to simplify life for developers; it is also about crafting code that is both fast and solid, generated at compile time by a battle-tested library.

Thankfully, C++ might soon be getting reflective metaprogramming ([PR2996](https://github.com/cplusplus/papers/issues/1668)). Leveraging the [experimental Bloomberg LLVM fork](https://github.com/bloomberg/clang-p2996) with reflective metaprogramming, we have built a full-fledged implementation—complete with tests, benchmarks, and documentation. Our goal is to have production-ready code the moment mainstream compilers catch up. The results speak for themselves: we are parsing JSON directly into C++ structures at gigabytes per second, outpacing even mature heavyweights like Rust's serde. Better yet, the conversion between C++ data structures and JSON is fully automated, thanks to metaprogramming. It has the potential to be a leap forward for C++ in the data-driven age. Unfortunately, there are still problems and limitations: we present them and provide some solutions.


## Outline

*You'll not be held to this—we understand that this is a snapshot in time.*


#### JSON, performance and safety issues
- **Why JSON matters**: Brief recap of JSON’s ubiquity—web APIs, config files, data interchange—and its intuitive appeal (e.g., `{"age": 5, "name": "Daniel"}`).
- **Performance bottlenecks**: Parsing complexity (string handling, nested structures), number parsing and serialization, serialization overhead, and the cost of manual mapping in C++.
- **Safety pitfalls**: Type mismatches, unexpected input (e.g., broken Unicode), and lack of compile-time guarantees in traditional C++ JSON libraries.
- **Motivation**: Contrast with languages like Rust (serde), Go or Python, where JSON handling is ergonomic—why C++ lags behind.

#### C++20 elements: concepts, tag_invoke, constexpr
- **Concepts**: How they enable cleaner, more constrained interfaces.
- **tag_invoke**: A customization point mechanism—how it simplifies generic serialization/deserialization hooks with less boilerplate.
- **constexpr**: Leveraging compile-time computation for precomputed parsing or formatting logic.
- **Setup for reflection**: These features lay the groundwork for metaprogramming but fall short of full automation.

#### C++26 reflective metaprogramming: modest introduction
- **What it is**: Brief explanation of reflection (PR2996)—introspecting C++ types at compile time (e.g., fields of a struct, their names/types).
- **Why it’s a game-changer**: No more manual mapping of JSON to structs; the compiler "knows" your data structures.
- **Bloomberg LLVM fork**: Quick note on the experimental implementation—why we used it and its current state.
- **Simple example**: Show a struct `Person { int age; std::string name; }` and how reflection exposes it for JSON.

#### How we made use of it: serialization and deserialization
- **Core idea**: Reflection auto-generates code to map JSON to/from C++ structs (e.g., `Person` to `{"age": 5, "name": "Daniel"}`).
- **Serialization**: Walking struct fields via reflection, emitting JSON strings at compile time where possible.
- **Deserialization**: Parsing JSON tokens and populating structs, with type-safe error handling.
- **Implementation details**: High-level overview—lexer, parser, and reflection-driven binder.

#### Quick perf analysis for our first working prototype (hint: it was not super fast!)
- **Why it was slow**: Naive string handling and unoptimized reflection overhead.
- **Lessons learned**: Early profiling showed us where to focus—set the stage for optimization.

#### Optimizing the code: what made a difference!
- **Key wins**: Prepare keys at compile-time, SIMD for string ops.
- **Anecdote**: Profiling experience is so-so.
- **Result**: Leap to gigabytes per second.

#### Serialization benchmarks!
- **Setup**: Describe test data and hardware.
- **Numbers**: Compare our implementation to alternatives 
- **Visuals**: It is really fast! (But could be faster)

#### Deserialization benchmarks: Rust Serde and others
- **Setup**: Describe test data (two complex JSON files) and hardware.
- **Head-to-head**: Your lib vs. serde (Rust), nlohmann/json (C++), and others.
- **Results**: We beat the alternatives  (reflection + C++ control).
- **System-dependent**: Processor type matters.

#### Safety: Is it improved?
- **Compile-time checks**: Reflection catches type mismatches before runtime.
- **Error handling**: Graceful fallback for malformed JSON, with clear diagnostics.
- **Trade-offs**: More safety than handwritten code, but not foolproof (e.g., runtime edge cases).

#### Downside: How challenging is reflective metaprogramming?
- **Learning curve**: Syntax and concepts are new—takes time to grok.
- **Tooling**: Debugging reflection code is tricky.
- **Audience hook**: "It’s like template metaprogramming’s wild cousin—powerful but untamed."

#### Downside: Slower builds? (with numbers!)
- **Data**: Share compile-time costs.
- **Why**: Reflection generates lots of code; LLVM fork isn’t optimized yet.
- **Mitigation**: Precompiled headers or caching strategies you explored.

#### Downside: Difficult error messages (with examples!)
- **Reality**: Reflection errors can be verbose and cryptic.
- **Example**: Real errors one might encounter.
- **Hope**: Compiler vendors will improve diagnostics as reflection matures

#### Conclusion
- **How close?**: Should you try it today?
- **How beneficial?**: How much help can you expect?
- **How impactful?**: How much of a difference will it make?

## Preferred session length


- [X] one session (60 minutes)
- [X] half session (30 minutes)
- [ ] two sessions (120 minutes)
- [ ] three sessions (180 minutes)
- [ ] four sessions (240 minutes)

## Session Level

- [ ] beginner
- [x] intermediate
- [x] advanced
- [x] expert

## Audience Description

*Examples: library authors, application developers, game developers, etc. A quality description helps your audience find your submission. Please keep it short and sweet. Full sentence not required.*

Performance-focused engineers, data science and AI engineers, ambitious library authors, application and game developers interested in what is coming next 

## Co-presenter(s)

*If this session will have one or more additional presenters please add their email address(es) here, separated by commas if more than one*

 daniel@lemire.me, franciscogthiesen@gmail.com

## Target track

- [ ] Back to Basics
- [X] Software Design
- [ ] Scientific Computing
- [ ] Tooling
- [ ] Embedded
- [ ] Robotics & AI
- [ ] GameDev
- [ ] Business & Careers

## Category

- [ ] Algorithms
- [ ] API Design
- [ ] Concurrency
- [ ] Embedded
- [X] Future C++
- [X] Generic/Metaprogramming
- [ ] Math/Analysis
- [X] Performance
- [ ] Standard Library
- [ ] Software Design
- [ ] Tooling/Utilities
- [ ] Value Semantics
- [ ] Safety
- [ ] Security
- [ ] Software Quality
- [ ] Testing
- [ ] Functional

## Additional tags
A comma separated list of tokens not covered by the track or categories - e.g.: constexpr, build systems, templates.
For additional information, see our tagging guide.

reflection, concepts, vectorized instructions, metaprogramming, performance, extensibility

## Session Material
*List material that you will submit to the public conference repository: (slides, source code, etc.)*

All of the source code is available publicly as open source (using a business friendly licence). The slides as well as our notes will be made freely available.


## Comments
*Anything else you'd like to communicate to the committee*

We could condense the presentation into a 30 minutes session, although we believe there is more than enough interesting content for a 60 minute session.
