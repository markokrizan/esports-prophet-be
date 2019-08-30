FROM microsoft/aspnetcore-build

WORKDIR /usr/src/app

COPY . .

EXPOSE 5000

ENTRYPOINT ["dotnet", "watch", "run"]

#Production:
#Build and compile into dist
#COPY dist /app
#EXPOSE 80
#ENTRYPOINT ["dotnet" "executable.dll"]