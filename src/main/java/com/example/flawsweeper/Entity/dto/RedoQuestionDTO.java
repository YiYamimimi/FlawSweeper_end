package com.example.flawsweeper.Entity.dto;

import cn.hutool.core.date.DateTime;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RedoQuestionDTO implements Serializable {
    /**
     * 用户id
     */
    private Integer uid;
    /**
     * 分类
     */
    private String classifyname;

    /**
     * 题目类型：选择（1）、非选择（0）、随机（2）
     */
    private Integer titletype;

    /**
     * 是否在收藏夹内：是（1）、否（0）
     */
    private Integer incollect;

    /**
     * 是否近七天创建的错题：是（1）、否（0）
     */
    private Integer inSevenDays;

    /**
     * 今日日期
     */
    private DateTime day;
}
