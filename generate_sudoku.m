function sudoku_puzzle = generate_sudoku(difficulty)
    % 生成一个完整的数独谜题
    puzzle = zeros(9, 9);
    % 在对角线上填充1-9的数字
    for U = 1:3:9
        nums = randperm(9);
        num_idx = 1;
        for i = 1:3
            for j = 1:3
                puzzle(U+i-1, U+j-1) = nums(num_idx);
                num_idx = num_idx + 1;
            end
        end
    end
    
    puzzle = fill_remaining(puzzle, 1, 4);
    
    % 根据难度删除一些数字
    switch difficulty
        case 'easy'
            num_to_remove = 40;
        case 'medium'
            num_to_remove = 50;
        case 'hard'
            num_to_remove = 60;
        otherwise
            num_to_remove = 40;
    end
    
    indices = randperm(81, num_to_remove);
    puzzle(indices) = 0;
    
    % 将9×9矩阵转化为n×3
    puzzle_tran=zeros(nnz(puzzle),3);     %中间矩阵,nnz为找到矩阵中非零值的数量
    k=1;
    for i=1:9
        for j=1:9
            if puzzle(i,j)~=0
                puzzle_tran(k,1)=i;
                puzzle_tran(k,2)=j;
                puzzle_tran(k,3)=puzzle(i,j);
                k=k+1;
            else
                continue;
            end
        end
    end
    sudoku_puzzle=puzzle_tran;
    
%     sudoku_puzzle = puzzle;
end