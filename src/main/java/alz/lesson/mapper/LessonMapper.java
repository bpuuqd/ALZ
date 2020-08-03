package alz.lesson.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import alz.lesson.domain.CategoryDTO;
import alz.lesson.domain.CurriculumDetailDTO;
import alz.lesson.domain.CurriculumSubjectDTO;
import alz.lesson.domain.LessonDTO;
import alz.lesson.domain.QuickReviewDTO;
import alz.lesson.domain.ScheduleDTO;
import alz.lesson.domain.TeacherDTO;
import alz.lesson.domain.TimeTableDTO;

public interface LessonMapper {

	int insertTeacher(TeacherDTO teacher);
	int insertLesson(LessonDTO lesson);
	int insertSchedule(TimeTableDTO timeTable);
	
	TeacherDTO findTeacherByUserId(Long userId);
	List<LessonDTO> lessonsByTeacherId(Long teacherId);

	LessonDTO findByLessonId(Long id);
	LessonDTO findBasicByLessonId(Long id); // 기본정보
	List<CurriculumSubjectDTO> findCurriculumByLessonId(Long id);
	TeacherDTO findTeacherByLessonId(Long id);
	List<QuickReviewDTO> findQuickReviewByLessonId(Long id);

	List<LessonDTO> findAll();
	
	List<CategoryDTO> findMainCategory();
	List<CategoryDTO> findSubCategory();
	List<CategoryDTO> findLessonLevel();

	int updateLesson(LessonDTO lessons);
	int updateTeacher(TeacherDTO teacher);

	int deleteById(Long id);

}
