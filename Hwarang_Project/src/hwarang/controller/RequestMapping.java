package hwarang.controller;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

// .do�� ã�´� => @RequestMapping("")
@Retention(RUNTIME)
@Target(METHOD)
public @interface RequestMapping {
	// int�� ����
	public String value();
}
