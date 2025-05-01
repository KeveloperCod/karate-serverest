package examples.runners;

import com.intuit.karate.junit5.Karate;

public class UpdateUserRunner {
    @Karate.Test
    Karate testUpdateUser() {
        return Karate.run("../users/update-user").relativeTo(getClass());
    }
}
