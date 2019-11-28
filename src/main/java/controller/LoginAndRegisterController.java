package controller;

import entity.Userinfo;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import serviceImpl.UserServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@RestController
public class LoginAndRegisterController {
    @Autowired
    UserServiceImpl usi;

    @RequestMapping("forget")
    public String reset(@RequestParam String username,@RequestParam String password,@RequestParam String password1){
        if(username!=""&&password!=""&&password1!=""){
            if(!password.equals(password1)){
                return "diffrent";
            }else{
                Userinfo userinfo = usi.selectByUsername(username);
                String password2 = userinfo.getPassword();
                if(DigestUtils.md5Hex(password.getBytes()).equals(password2)){
                    return "same";
                }else{
                    int id = userinfo.getuId();
                    Userinfo ui = new Userinfo();
                    ui.setuId(id);
                    ui.setPassword(DigestUtils.md5Hex(password.getBytes()));
                    int i = usi.updateByPrimaryKeySelective(ui);
                    if(i>0){
                        return "success";
                    }else{
                        return "mismatching";
                    }
                }
            }
        }else{
            return "empty";
        }
    }


    @RequestMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, @RequestParam String flag, HttpServletRequest req){
        Userinfo ui = usi.selectByUsername(username);
        if (ui==null){
            //用户不存在
            return "none";
        }else{
          if (DigestUtils.md5Hex(password.getBytes()).equals(ui.getPassword())){

             if (flag.equals("yes")){
                 ui.setPassword(password);
                 HttpSession session = req.getSession();
                 session.setAttribute("info",ui);
                // System.out.println("****"+ui.getPassword());
             }else{
                 req.getSession().removeAttribute("info");
             }

              return "yes";
          }else{
              //System.out.println("登录失败");
              return "no";
          }
        }

    }




    @RequestMapping("register")
    public String register(@RequestParam String username, @RequestParam String password, @RequestParam String email){
        Userinfo userinfo = usi.selectByUsername(username);
        if (userinfo!=null){
            return "existed";
        }else{
            Userinfo ui = new Userinfo();
            ui.setUsername(username);
            ui.setPassword(DigestUtils.md5Hex(password.getBytes()));
            ui.setEmail(email);
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            ui.setRegisterTime(sdf.format(date));
            int line = usi.insert(ui);

            if (line>0){
                return "yes";
            }else{
                return "no";
            }

        }
    }


}
