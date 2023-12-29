Steps to download GraphQL schema and API files:
1. Install CLI
   <img width="391" alt="Screenshot 2023-12-29 at 7 59 14 PM" src="https://github.com/KalaiLingappan/SwiftUI-GraphQL-MVVM/assets/98007913/7f702a35-4d2a-4245-9624-3e30d81588bc">

2. Setup Codegen configuration file
   Use below command in terminal, replace API name with your API
    ./apollo-ios-cli init --schema-namespace "##API_Name###" --module-type swiftPackageManager

3. Once the code apollo-codegen-config.json file, open the JSON file and update the schema download details next to "Output"
   "schemaDownload": {
      "downloadMethod": {
          "introspection": {
              "endpointURL": "###GraphqQL URL#######",
              "httpMethod": {
                  "POST": {}
              },
              "includeDeprecatedInputValues": false,
              "outputFormat": "SDL"
          }
      },
      "downloadTimeout": 60,
      "headers": [],
      "outputPath": "./graphql/schema.graphqls"
  }

4. Run the following commnad in Terminal which will download the schema file
   ./apollo-ios-cli fetch-schema

5. Now run the following command to fetch API and other files
   ./apollo-ios-cli generate

6. Once the APIs are generated, add it to the libraries. Now GraphQL files are ready to be used :) 
