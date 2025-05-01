package examples.runners;

import com.intuit.karate.junit5.Karate;

public class ListUsersRunner {
    @Karate.Test
    Karate testListUsers() {
        return Karate.run("../users/list-users").relativeTo(getClass());
    }
}
