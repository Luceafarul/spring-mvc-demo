package model;

import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

public class Student {

    private String firstName;
    private String lastName;
    private String country;
    private final List<String> countries;

    public Student() {
        countries = Arrays.stream(Locale.getISOCountries())
            .map(countryCode -> new Locale("", countryCode).getDisplayCountry())
            .collect(Collectors.toList());
    }

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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public List<String> getCountries() {
        return countries;
    }

    @Override
    public String toString() {
        return "Student{" +
            "firstName='" + firstName + '\'' +
            ", lastName='" + lastName + '\'' +
            ", country='" + country + '\'' +
            '}';
    }
}
