@echo off
echo Starting E-commerce Product Catalog Website...

echo Installing frontend dependencies...
cd ecom-catalog-react
npm install
cd ..

echo Starting Backend (Spring Boot)...
start cmd /k "cd productcatalog && mvnw.cmd spring-boot:run"

timeout /t 15 /nobreak > nul

echo Starting Frontend (React)...
start cmd /k "cd ecom-catalog-react && npm run dev"

echo Both servers are starting. Please wait a few seconds.
echo Backend: http://localhost:8080
echo Frontend: http://localhost:5173
echo H2 Console: http://localhost:8080/h2-console

pause
