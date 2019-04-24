package hwarang.controller;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

// .do로 찾는다 => @RequestMapping("")
@Retention(RUNTIME)
@Target(METHOD)
public @interface RequestMapping {
	// int도 가능
	public String value();
}
