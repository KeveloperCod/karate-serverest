package examples.runners;

import com.intuit.karate.junit5.Karate;

public class GetUserByIdRunner {
    @Karate.Test
    Karate testGetUserById() {
        return Karate.run("../users/get-user-by-id").relativeTo(getClass());
    }
}
