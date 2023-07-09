function used = used_in_col(puzzle, col, num)
    % 检查在指定列是否已经使用了该数字
    used = any(puzzle(:, col) == num);
end