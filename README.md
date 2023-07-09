# MATLAB_sudoku
这是一个利用matlab app designer设计的一个简易的数独生成与求解器

其中，generate_sudoku.m文件是生成数独函数；
该函数首先填充了对角线上的三个宫，之后利用fill_remaining.m填充剩余的数字；
最后在随机挖去一定数量的数字；
这样就生成了一个数独谜题。

fill_remaining.m是利用递归函数填充剩余的空格的函数，

sudokuEngine.m是解数独的函数。
