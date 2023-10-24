# MobileShop_PRN231

## How to configure and run
- Clone code from Github: git clone https://github.com/HieuShinDepTrai/MobileShop_PRN231
- Open solution eShopSolution.sln in Visual Studio 2019
- Set startup project is eShopSolution.Data
- Change connection string in Appsetting.json in eShopSolution.Data project
- Open Tools --> Nuget Package Manager -->  Package Manager Console in Visual Studio
- Run Update-database and Enter.
- After migrate database successful, set Startup Project is eShopSolutionBackendApi
- Change database connection in appsettings.Development.json in eShopSolutionBackendApi project.
- You need to change 3 projects to self-host profile.
- Set multiple run project: Right click to Solution and choose Properties and set Multiple Project, choose Start for 3 Projects: BackendApi, WebApp and AdminApp.
- Choose profile to run or press F5

## How to contribute
- Fork and create your branch
- Create Pull request to us.
