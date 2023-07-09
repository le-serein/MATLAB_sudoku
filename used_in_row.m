function used = used_in_row(puzzle, row, num)
    % 检查在指定行是否已经使用了该数字
    used = any(puzzle(row, :) == num);
end