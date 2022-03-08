- FOR GET REQUESTS -
curl -X GET http://localhost:8080/api/v1/hardware 


- FOR POST REQUESTS -

curl -X POST http://localhost:8080/api/v1/hardware -H "Content-Type: application/json" -d "{\"brand\":\"Sony\",\"date\":\"2022-03-08\",\"model\":\"4\", \"name\":\"Playstation\", \"serialNumber\":\"abcdef\"}"


- FOR DELETE REQUESTS -

curl -X DELETE http://localhost:8080/api/v1/hardware/abcdef
