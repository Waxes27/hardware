add:
	curl -X POST http://localhost:8080/api/v1/hardware -H "Content-Type: application/json" -d "{\"brand\":\"Sony\",\"date\":\"2022-03-08\",\"model\":\"4\", \"name\":\"Playstation\", \"serialNumber\":\"abcdefg\"}"
	curl -X POST http://localhost:8080/api/v1/hardware -H "Content-Type: application/json" -d "{\"brand\":\"Sony\",\"date\":\"2022-03-08\",\"model\":\"5\", \"name\":\"Playstation\", \"serialNumber\":\"abcdefgh\"}"

delete:
	curl -X DELETE http://localhost:8080/api/v1/hardware/abcdefg -H "Content-Type: application/json"
	curl -X DELETE http://localhost:8080/api/v1/hardware/abcdefgh -H "Content-Type: application/json"

git:
	git add .;git commit -m "Update from Makefile";git push