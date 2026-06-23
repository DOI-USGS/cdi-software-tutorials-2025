# Tools
> This is a non-exhaustive list of commonly used tools, not an endorsement of any one particular tool.

## Example Tools
| | Python | JavaScript | Bash/Shell | Ruby | 
|:---:|:---:|:---:|:---:|:---:|
| **Security** | [pip-audit][1]<br>[safety][2] | [audit (standard)][3] | | [bundler-audit][4]<br>[Brakeman][5] |
| **Lint** | [black][6]<br>[isort][7]<br>[mypy][8]<br>[flake8][9]<br>[ruff][10] | [ESLint][11] | [ShellCheck][12] | [RuboCop][13]|
| **Test** | [unittest (standard)][14]<br>[pytest][15] | [Jest][16]<br>[Mocha][17] | [bats-core][18] | [Minitest][19]<br>[Rspec][20]<br>[Test::Unit][21] |
| **Build/Bundle** | [build (pypi)][22] | [ESBuild][23] | | [build (gem)][24] |
| **Deliver/Publish** | [twine][25] | [npm-publish (npm standard)][26] | | [push (gem)][27] |


## Example Commands
| | Python  | JavaScript | Bash/Shell | Ruby | 
|:---:|:---:|:---:|:---:|:---:|
| **Security Check** | `pip-audit`<br>`safety scan` | `npm audit` |  | `bundle-audit check --no-update`<br>`brakeman` |
| **Security Fix** |  | `npm audit fix` |  | `bundle-audit check --update`|
| **Lint** | `black --check <path to files to check>`<br>`isort --check <path to files to check>`<br>`mypy <path to files to check>`<br>`flake8`<br>`ruff check` | `eslint` | `shellcheck` | `rubocop`|
| **Lint Fix** | `black <path to files to check>`<br>`isort <path to files to check>`<br>`ruff check --fix` | `eslint --fix` |  | `rubocop -a`|
| **Test** | `unittest <path to test file(s)>`<br>`pytest <path to test file(s)>` | `jest`<br>`mocha`| `bats <path to .bats test file(s)>` | `ruby <path to test file>`<br>`rspec`<br>`ruby <path to test file>` |
| **Build/Bundle** | `python -m build` | `esbuild <path to .js file> --bundle --platform=node`<br>`parcel build` | | `gem build <path to you .gemspec file>` |
| **Deliver/Publish** |  `twine upload <path to dist folder>/*` | `npm publish` | | `gem push <path to .gem file>` |


----
# Slido Poll 2
<p align="center">
    <img  alt="Slido Poll 2" src="./images/poll2.png" width="50%">
</p>

---
# Navigation

[Next --> Implementation](./03-implementation.md#implementation)

[Previous <-- Overview](./01-overview.md#overview)

[1]: https://pypi.org/project/pip-audit/ "This is a non-Federal link"
[2]: https://pypi.org/project/safety/ "This is a non-Federal link"
[3]: https://docs.npmjs.com/auditing-package-dependencies-for-security-vulnerabilities "This is a non-Federal link"
[4]: https://github.com/rubysec/bundler-audit "This is a non-Federal link"
[6]: https://pypi.org/project/black/ "This is a non-Federal link"
[5]: https://brakemanscanner.org/ "This is a non-Federal link"
[7]: https://pypi.org/project/isort/ "This is a non-Federal link"
[8]: https://mypy.readthedocs.io/en/stable/ "This is a non-Federal link"
[9]: https://flake8.pycqa.org/en/latest/ "This is a non-Federal link"
[10]: https://docs.astral.sh/ruff/ "This is a non-Federal link"
[11]: https://eslint.org/ "This is a non-Federal link"
[12]: https://www.shellcheck.net/ "This is a non-Federal link"
[13]: https://rubocop.org/ "This is a non-Federal link"
[14]: https://docs.python.org/3/library/unittest.html "This is a non-Federal link"
[15]: https://docs.pytest.org/en/stable/ "This is a non-Federal link"
[16]: https://jestjs.io/ "This is a non-Federal link"
[17]: https://mochajs.org/ "This is a non-Federal link"
[18]: https://bats-core.readthedocs.io/en/stable/ "This is a non-Federal link"
[19]: https://minite.st/ "This is a non-Federal link"
[20]: https://rspec.info/ "This is a non-Federal link"
[21]: https://github.com/test-unit/test-unit "This is a non-Federal link"
[22]: https://pypi.org/project/build/ "This is a non-Federal link"
[23]: https://esbuild.github.io/getting-started/#bundling-for-node
[24]: https://guides.rubygems.org/make-your-own-gem/ "This is a non-Federal link"
[25]: https://twine.readthedocs.io/en/stable/ "This is a non-Federal link"
[26]: https://docs.npmjs.com/cli/v9/commands/npm-publish "This is a non-Federal link"
[27]: https://guides.rubygems.org/publishing/#publishing-to-rubygemsorg "This is a non-Federal link"