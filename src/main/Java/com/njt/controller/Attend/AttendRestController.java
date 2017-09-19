package com.njt.controller.Attend;

import com.njt.model.attend.Attend;
import com.njt.model.subject.Subject;
import com.njt.service.attend.AttendService;
import com.njt.service.schoolYear.SchoolYearService;
import com.njt.service.student.StudentService;
import com.njt.service.subject.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/private")
public class AttendRestController {

    @Autowired
    private AttendService attendService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private SubjectService subjectService;
    @Autowired
    private SchoolYearService schoolYearService;

    @RequestMapping(value = "/obaveza/dodaj", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Attend> saveNewSubject(@RequestBody Attend attend) {
        attend.setSchoolYear(schoolYearService.findById(attend.getSchoolYear().getIdSkolskaGodina()));
        attend.setStudent(studentService.findById(attend.getStudent().getIdStudenta()));
        attend.setSubject(subjectService.findById(attend.getSubject().getIdPredmeta()));
        try {
            attendService.persist(attend);
        } catch (Exception ex) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }

        return new ResponseEntity<>(attend, HttpStatus.OK);
    }
}
