package examples.runners;

import com.intuit.karate.junit5.Karate;

public class CreateUserRunner {
    @Karate.Test
    Karate testCreateUser() {
        return Karate.run("../users/create-user").relativeTo(getClass());
    }
}
