package com.zplzh.springbootmybatisplus.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zplzh.springbootmybatisplus.mapper.ChoicesMapper;
import com.zplzh.springbootmybatisplus.mapper.StudentsMapper;
import com.zplzh.springbootmybatisplus.pojo.Choices;
import com.zplzh.springbootmybatisplus.pojo.Students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class SpringBootController {
        @Autowired
        private StudentsMapper studentsMapper;

        @Autowired
        private ChoicesMapper choicesMapper;

        /**
         * 添加学生
         */
        @PostMapping("/add")
        public String addStudent(@RequestBody Students student) {
            if (studentsMapper.insert(student) == 1) {
                return "学生添加成功。";
            }
            return "添加学生失败。";
        }

        /**
         * 根据学生号删除学生
         */
        @DeleteMapping("/delete/{sid}")
        public String deleteStudent(@PathVariable String sid) {
            if (studentsMapper.deleteById(sid) == 1) {
                return "学生删除成功。";
            }
            return "删除学生失败。";
        }

        /**
         * 更新学生信息
         */
        @PutMapping("/update")
        public String updateStudent(@RequestBody Students student) {
            if (studentsMapper.updateById(student) == 1) {
                return "学生信息更新成功。";
            }
            return "更新学生信息失败。";
        }

/*        *//**
         * 根据学生号查询学生信息及其选课信息
         *//*
        @GetMapping("/info/{sid}")
        public List<Choices> getStudentCourseInfo(@PathVariable String sid) {
            QueryWrapper<Choices> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("sid", sid);
            return choicesMapper.selectList(queryWrapper);
        }*/

    /**
     * 根据学生号查询学生信息及其选课信息
     */
    @GetMapping("/info/{sid}")
    public List<Choices> getStudentCourseInfo(@PathVariable String sid) {
        return choicesMapper.selectStudentCourseInfo(sid);
    }

    /**
     * 根据姓名模糊查询学生信息并分页显示
     */
    @GetMapping("/search")
    public IPage<Students> searchStudents(@RequestParam String name,
                                          @RequestParam(defaultValue = "1") Integer pageNum,
                                          @RequestParam(defaultValue = "10") Integer pageSize) {
        QueryWrapper<Students> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("sname", name);
        Page<Students> page = new Page<>(pageNum, pageSize);
        return studentsMapper.selectPage(page, queryWrapper);
    }

}
