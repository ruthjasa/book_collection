# Book Collection Application README

Ruby on Rails web app that manages a library catalog of books, user accounts, and book assignments.

---

## 🛠️ Tech Stack & Environment
* **Framework:** Ruby on Rails
* **Language:** Ruby
* **Database:** PostgreSQL / SQLite
* **Containerization:** Docker & Dev Containers
* **Deployment:** Heroku Continuous Delivery Pipeline

---

## 🚀 Features
* **Books Management:** CRUD operations for books (Title, Author, Price, Published Date).
* **User Accounts:** User creation and management (`username`).
* **User-Book Associations:** A join table (`UserBook`) that connects users and books.
* **Dynamic Views:** Interactive select dropdowns for quick assignment creation and integrated navigation across indexes.

---

## AI Usage & Methodology

I utilized AI assistance (Gemini / ChatGPT) as a supportive pair-programmer throughout development. AI tools were used to debug environment issues, guide coding decisions, and verify compliance against assignment rubrics.

### Primary Use Cases & Prompts

* **Environment & Container Debugging**
  * *Purpose:* Resolving Docker execution errors and local server binding issues.
  * *Sample Prompt:* `"Help me fix this Docker Compose error: no configuration file provided: not found, and show me how to re-enter my running container."`

* **Active Record Associations & Scaffolding**
  * *Purpose:* Establishing many-to-many relationships (`has_many :through`) across `User`, `Book`, and `UserBook` entities.
  * *Sample Prompt:* `"How do I configure a join table in Rails so that UserBook connects users and books, and how do I replace raw integer inputs in _form.html.erb with select dropdowns for usernames and book titles?"`

* **Error Diagnosis & Model Validation**
  * *Purpose:* Identifying syntax mistakes and model validation bugs.
  * *Sample Prompt:* `"I am getting ArgumentError (Unknown validator: 'PrescenceValidator') in app/models/user.rb. What caused this and how do I fix it?"`

* **Rubric & Quality Audit**
  * *Purpose:* Auditing application views, navigation links, and code structure against the course rubric before submission.
  * *Sample Prompt:* `"Analyze my Rails views and routes against this Canvas rubric to identify any missing navigation links or formatting discrepancies."`

### Human Oversight & Engineering Judgment
While AI suggested code snippets and debugging paths, all generated suggestions were manually verified, tested locally within Docker, and adjusted for edge cases (such as adding Ruby's safe-navigation operator `&.` to prevent `NilClass` errors when displaying associations).
