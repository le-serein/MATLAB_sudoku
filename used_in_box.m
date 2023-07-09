function used = used_in_box(puzzle, box_start_row, box_start_col, num)
    % 检查在指定3x3方格内是否已经使用了该数字
    used = any(puzzle(box_start_row:box_start_row+2, box_start_col:box_start_col+2) == num, 'all');
end