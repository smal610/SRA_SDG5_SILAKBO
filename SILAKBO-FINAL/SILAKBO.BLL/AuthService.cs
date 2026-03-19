using System;
using System.Collections.Generic;
using System.Text;
//using SILAKBO_FINAL.DAL;
//using SILAKBO_FINAL.Models;
using SILAKBO_FINAL.SILAKBO.Models;

public class AuthService
{
    private UserRepository userRepo = new UserRepository();

    public bool Register(User user)
    {
        user.Password = Helper.HashPassword(user.Password);
        userRepo.Register(user);
        return true;
    }

    public User Login(string username, string password)
    {
        // TEMPORARY for admin
        if (username == "admin" && password == "admin123")
        {
            return new User
            {
                Name = "Administrator",
                Username = "admin",
                Role = "Admin"
            };
        }

        string hash = Helper.HashPassword(password);
        return userRepo.Login(username, hash);
    }
}