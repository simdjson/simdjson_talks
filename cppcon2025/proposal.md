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

- JSON, performance and safety issues
- C++20 elements: concepts, tag_invoke, constexpr
- C++26 reflective metaprogramming: modest introduction
- How we made use of it: serialization and deserialization
- Quick perf analysis for our first working prototype (hint: it was not super fast!)
- Optimizing the code: what made a difference!
- Serialization benchmarks!
- Deserialization benchmarks: Rust Serde and others.
- Safety: Is it improved?
- Downside: How challenging is reflective metaprogramming?
- Downside: slower builds? (with numbers!)
- Downside: difficult error messages (with examples!)


## Preferred session length


- [X] one session (60 minutes)
- [ ] half session (30 minutes)
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

## Co-presenter(s)

*If this session will have one or more additional presenters please add their email address(es) here, separated by commas if more than one*

 daniel@lemire.me, franciscogthiesen@gmail.com

## Target track

- [ ] Back to Basics
- [ ] Software Design
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

reflection, concepts, vectorized instructions, metaprogramming

## Session Material
*List material that you will submit to the public conference repository: (slides, source code, etc.)*

All of the source code is available publicly as open source (using a business friendly licence). The slides as well as our notes will be made freely available.


## Comments
*Anything else you'd like to communicate to the committee*
