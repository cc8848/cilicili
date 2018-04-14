package cilicili.jz2.controller;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class aopController {
	@Pointcut ("execution(* cilicili.jz2.controller.I*Controller.*(..))")
	void result() {
	}
	
	@Before ("result()")
	public void clearResultBefore() {
		baseController.result.clear();
	}
}
