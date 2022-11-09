package com.itmk.utils;


import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * 通用返回值的封装
 * @param <T>
 */
@Data
@AllArgsConstructor
public class ResultVo<T> {
    private String msg;
    private int code;
    private T data;
}