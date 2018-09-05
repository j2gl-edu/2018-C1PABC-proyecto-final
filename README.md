# Proyecto Final

Descripción detallada del [Proyecto Final](./final-project.md)

## Required

* jdk 1.8+
* Maven - https://maven.apache.org/

## Build
On Linux
```sh
./mvnw clean package
```

On Windows 
```
mvnw.cmd clean package
```
## Run
```sh
java -jar target/rpn-calculator-1.0.0.jar
```

## Testing

### Method 1
Use Postman http://localhost:8080/calculator

### Method 2
In the command line
```sh
curl -X POST \
  http://localhost:8080/calculator \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'Postman-Token: 6f558008-9b7b-4418-8a54-57baae72bfed' \
  -d '{ "expression": "15 7 +" }'
```

### Method 3
Go to http://localhost:8080/web/calculator
