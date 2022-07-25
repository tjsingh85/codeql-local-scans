# codeql-local-scans
This repo helps you install codeql cli, clone codeql repo and runs scans locally on Mac.

* Run install-codeql-cli.sh on your mac
```
sh install-codeql-cli.sh
```

* It downloads, unzip code ql cli , create codeql specific folder and clone the codeql repo.

* To use codeql command from any location on the terminal,

``` 
add codeql folder to /etc/paths
```

* Check if Codeql is installed successfully, using
``` 
codeql --version

```

* Clone your repo, ideally python or javascript for fast scans

* Create CodeQL DB. Run the below command from the root folder of your repo
```
codeql database create <database-name> --language=<language-identifier>
```

* Run single codeql query to analyze the db created in earlier step. Results are outputed in sarif file
```
codeql database analyze <database-name> --format=sarif-latest --output=<output-file-name> <codeql-query-path>
```

* Sarif file will be generated in the current folder. If you have sarif viewer already installed , you can upload this file in your VS code and view the results.

## Useful Links:
* [Code QL Public Repo](https://github.com/github/codeql)
* [Code QL Docs](https://codeql.github.com/docs/)
* [Sarif Viewer Vscode plugin](https://marketplace.visualstudio.com/items?itemName=MS-SarifVSCode.sarif-viewer)


