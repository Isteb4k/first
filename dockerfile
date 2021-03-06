# Создать контейнер из докер образа golang:1.16
FROM golang:1.16
# Создать директорию /app
RUN mkdir /app
# Добавить в контейнер директорию app
ADD . /app/
# установить директорию app в качестве рабочей
WORKDIR /app
# скомпилировать проект
RUN go build -o main ./cmd
# запустить бинарный файл, созданный на прошлом шаге
CMD ["./main"]
