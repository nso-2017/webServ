package main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;

/**
 * Created by noborin on 23-1-2017.
 */
public class Users {



    private enum Rights{ REGULAR_USER,ADMIN_USER,NOT_REGISTERED }
    private Map<User, Rights> UserList;

    public Users() {
        UserList = new HashMap<>();
    }
    public boolean authenticate(User user){
        return UserList.containsKey(user);

    }
    public Rights getRights(User user){
        return UserList.getOrDefault(user,Rights.NOT_REGISTERED);
    }


}
