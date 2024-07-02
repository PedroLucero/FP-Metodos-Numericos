@echo off
REM Check if Git Bash is installed by looking for its executable
IF NOT EXIST "%ProgramFiles%\Git\git-bash.exe" (
    IF NOT EXIST "%ProgramFiles(x86)%\Git\git-bash.exe" (
        echo Git Bash not found. Please ensure Git is installed.
        pause
        exit /b
    )
)

REM Determine the Git Bash executable path
SET "GIT_BASH_PATH=%ProgramFiles%\Git\git-bash.exe"
IF NOT EXIST "%GIT_BASH_PATH%" (
    SET "GIT_BASH_PATH=%ProgramFiles(x86)%\Git\git-bash.exe"
)

REM Open Git Bash in the current directory
start "" "%GIT_BASH_PATH%" --cd="%cd%"
