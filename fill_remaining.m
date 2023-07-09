function puzzle = fill_remaining(puzzle, i, j)
    % 递归填充剩余的空格
    if j > 9
        i = i + 1;
        j = 1;
    end
    if i > 9
%         puzzle = puzzle;
        return;
    end
    
    if puzzle(i, j) ~= 0
        puzzle = fill_remaining(puzzle, i, j+1);
        return;
    end
    
    nums = randperm(9);
    for num = nums
        if is_safe(puzzle, i, j, num)
            puzzle(i, j) = num;
            puzzle = fill_remaining(puzzle, i, j+1);
            if sum(puzzle(:) == 0) == 0
                return;
            end
            puzzle(i, j) = 0;
        end
    end
end