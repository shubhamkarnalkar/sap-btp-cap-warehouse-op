# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).

## Naming convention
Every service should be denoted with snake case only, since the url will be formed using service name.

## Prerequisite for the build
Make sure the HANA instance is running when you deploy your app
before executing the following commands: 
```cmd
cds build --production
mbt build
```
After completing the build, you can deploy the app using the .mtar file in the current workspace's folder mta_archives.


