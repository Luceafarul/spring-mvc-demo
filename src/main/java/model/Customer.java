package model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Customer {

    @NotNull(message = "is required")
    @Size(min = 2, message = "min 2 symbols")
    private String firstName;

    @NotNull(message = "is required")
    @Size(min = 2, message = "min 2 symbols")
    private String lastName;

    @Min(value = 0, message = "must be greater than or equals to zero")
    @Max(value = 10, message = "must be less than or equals to 10")
    private int freePasses;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getFreePasses() {
        return freePasses;
    }

    public void setFreePasses(int freePasses) {
        this.freePasses = freePasses;
    }
}
