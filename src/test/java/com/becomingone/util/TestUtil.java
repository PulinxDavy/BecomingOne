package com.becomingone.util;

/**
 * Created by Davy on 7/19/2015.
 */
public class TestUtil {

    private static final String CHARACTER = "a";

    public static String createStringWithLength(int length) {
        StringBuilder builder = new StringBuilder();

        for (int index = 0; index < length; index++) {
            builder.append(CHARACTER);
        }

        return builder.toString();
    }
}
