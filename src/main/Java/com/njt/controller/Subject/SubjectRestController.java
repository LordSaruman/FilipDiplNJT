package com.njt.controller.Subject;

import com.njt.model.subject.Subject;
import com.njt.service.subject.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/private")
public class SubjectRestController {

    @Autowired
    private SubjectService subjectService;

    @RequestMapping(value = "/predmet/", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Subject> saveNewSubject(@RequestBody Subject subject) {
        subjectService.saveSubject(subject);

        return new ResponseEntity<>(subject, HttpStatus.OK);
    }

    @RequestMapping(value = "/predmet/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Subject> editSubject(@PathVariable int id, @RequestBody Subject subject) {
        Subject subjectDB = subjectService.findById(id);
        if (subjectDB == null) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        subjectService.updateSubject(subjectDB, subject);

        return new ResponseEntity<>(subject, HttpStatus.OK);
    }

    @RequestMapping(value = "/predmet/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Subject> deleteSubject(@PathVariable int id) {
        Subject subjectDB = subjectService.findById(id);
        if (subjectDB == null) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }

        subjectService.deleteSubjectById(id);

        return new ResponseEntity<>(subjectDB, HttpStatus.OK);
    }

}
