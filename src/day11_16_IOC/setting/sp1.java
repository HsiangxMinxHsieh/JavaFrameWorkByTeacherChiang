package day11_16_IOC.setting;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import day11_16_IOC.model.A;
import day11_16_IOC.model.B;
import day11_16_IOC.model.pro;

@Configuration
public class sp1 {
	@Bean(name = "a1")
	public A getA() {
		return new A();
	}

	@Bean(name = "a2")
	public A getA2() {
		A a = new A();
		a.setName("我們的愛~~~哎呀，過了就不再回來");
		return a ;
	}

	@Bean(name = "b1")
	public B getB() {
		return new B();
	}

	@Bean(name = "p1")
	public pro getPro() {
		pro p = new pro();

		p.setA(getA());
		p.setB(getB());
		return p;
	}

	@Bean(name = "p2")
	public pro getPro2() {
		pro p = new pro();

		p.setA(getA2());
		p.setB(getB());
		return p;
	}

}