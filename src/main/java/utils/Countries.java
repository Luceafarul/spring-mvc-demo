package utils;

import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

public class Countries {

    public static List<String> countries = Arrays.stream(Locale.getISOCountries())
        .map(countryCode -> new Locale("", countryCode).getDisplayCountry())
        .collect(Collectors.toList());
}
