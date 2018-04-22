select student.name, student.student_id, term_result.student_id, term_result.gpa
    from student
    inner join term_result
    on student.student_id = term_result.student_id;