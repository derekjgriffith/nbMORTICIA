REM Activate the Python 3.3 Development environment for MORTICIA in Windows
REM There must be a morticia.pth file in \Anaconda\envs\mordevpy2\Lib\site-packages\ that points
REM to the root directory of your clone of the the MORTICIA GitHub repository
REM for example, morticia.pth should have the single line D:\\Projects\\GitHub\\MORTICIA

REM NOTE : Switching environments does not work for notebooks unless Jupyter is installed
REM        in the environment which you switch to. In this case, Jupyter must be installed
REM        in the mordevpy33 environment.

REM The activate command is a batch file and must therefore be wrapped in a call command
call activate mordevpy33
REM Get Jupyter pointing in the right direction
jupyter kernelspec install-self --user
jupyter notebook



