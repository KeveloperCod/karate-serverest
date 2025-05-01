package examples.runners;

import com.intuit.karate.junit5.Karate;

public class DeleteUserRunner {
    @Karate.Test
    Karate testDeleteUser() {
        return Karate.run("../users/delete-user").relativeTo(getClass());
    }
}
