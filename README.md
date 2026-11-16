Source of [aperturelab.fr](https://aperturelab.fr), powered by [Cecil](https://cecil.app).

## Front matter schemas

Page front matter is validated at build time against the schemas in [`schemas/`](schemas/) (Cecil `pages.schema`):

- [`_all.yml`](schemas/_all.yml): fields common to every page (`title`, `description`)
- [`index.yml`](schemas/index.yml): the one-page home sections (`hero`, `problems`, `expertises`, …, `contact`)

An invalid page is reported and skipped by `cecil build`.
