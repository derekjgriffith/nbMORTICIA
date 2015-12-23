REM Activate the Python 2 Development environment for MORTICIA in Windows
REM There must be a morticia.pth file in \Anaconda\envs\mordevpy2\Lib\site-packages\ that points
REM to the root directory of your clone of the the MORTICIA GitHub repository
REM for example, morticia.pth should have the single line D:\\Projects\\GitHub\\MORTICIA
REM The activate command is a batch file and must therefore be wrapped in a call command
call activate mordevpy27

REM Note that the --script option is now deprecated and this should be done in some other way
jupyter notebook --script



