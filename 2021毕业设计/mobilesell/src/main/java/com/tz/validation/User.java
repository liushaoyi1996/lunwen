package com.tz.validation;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class User {

    @NotNull
    @Size(min = 6, max = 12, message = "{user.name.invalid}")
    private String name;

    @NotNull
    @Size(min = 6, max = 12, message = "{user.password.invalid}")
    private String password;

    @Min(value = 18, message = "{user.age.invalid}")
    @Max(value = 80, message = "{user.age.invalid}")
    private int age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
