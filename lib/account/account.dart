import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer <AppCubit,AppStates> (
      listener: (context,state){},
      builder: (context,state){
        return ConditionalBuilder(
          condition: AppCubit.get(context).showProfileModel != null ,
          fallback: (context) => Center(child: CircularProgressIndicator(),),
          builder: (context) => Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children : [
                        CircleAvatar(
                          radius: 65,
                          backgroundImage: NetworkImage(
                              //AppCubit.get(context).showProfileModel!.data.image
                             "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAMFBMVEXFxcX////CwsLKysrOzs78/Pzh4eHHx8fm5ub4+Pjz8/Pw8PDT09Pt7e3b29vq6uq8d7SHAAAFT0lEQVR4nO2d25qqMAyFpVAOUuD933aD6IzKVpFmNQsm/423ri8hTdI2PZ0MwzAMwzAMwzAMwzAMwzAMwzAMwzAMwzAMw1DA3aP9Z6QZJeWhrOu6nRh/yxCqw8gc1YXQNY332S/e+6YbQnEElXk/3Et7xJ/rXPsPRuHyon4t7yqyKfNK+49upCrC+YO8K2UotP/sFopypb6Jc7k3O7rwjb6JIewq6Liy+U7fSDMUu9HoPseX/2vsdyLR9Zv0TXS7WDuKN+vfZ4n8QdWFbru+Ed+Tm9GFCAPOlNQSXfg+hj7TDMQSiz5e4AivRCcjkFeihIveJHLmcPFBhlxiISgwywiz1DxuHXzG00l0tajAUSJZtInIRV9BlsAVYmH0l5LJT10pLzA7E9WLrhT30VmitrAfii87FivxPBUxxoRE2RsizMyU2tJmKkSYmWk4jJhjvsILvba4CzgTjuFUW9wF2Fc4wRBOc6RAhsRGPOV+pNEvFHPQWnhD3YiuxwrMOnWFWCcd3VQ7OXXQSJpNxb6yQsn20/+pld0Ur/Csq9ANaIFZo+umDpiT3hTq5qbIrPuK110R5Rr5r1ENNYAm4pJBVSGqf3GPakPqLyjEC1RWiF8OtRWi825TiFd4fC89vsI/sFqYQgFazdb+8fPS49cWKRQq14enBDW+chcDn9QcX6H2eYXj90txe/g3tLdmnOyBvSXq59vgVb5yy3sC7Kb629zorrf+aQzwFmmrbsITOK3Rd9IRpBFbbXEXcmCs4TjYlrcwgepb3FdwZXCnf5pmBiWx1T6H8UOB8VOiM8Kgdg3TnVlIsCEyocjV0SVcIzMAtf6ZJY5eqcQl0sTRG5Wwn2qX9v+hOLpA2UsJbB/hTCW3TaO6GfMGMYkt0a21R4QclVegkMQ25xV4krhAwxlk7oit+Dmq+ne4qCOnZ/3m4QqqbTOURjxzjLkn77dtZvi62ofAyVO3TFIa2McLPZB/PUyp67kXiSecC99W/W3Y0RxMt23cl9/LSLoqYtpXF9iX+5OrQsy4totGZkO6PFLfxNDTapzsJzPri9WOQvqyaWQbyY7MA66TbEV59cuxz8SOS1zSkQ2KQpz3HrRF/VJJzdp7oulZVkfcoaGSofG9daTuKhgSOQeaoHSTqD4Oy/XoQ8Jn3V3EFGf1VTdKo4Yir5c4qMUb0AGFJVoDBgv04dkfvI5E4FGoJQqbUS6dBS90yVeNxAKzrE7sqMkFZj6txCR31p5JurWf4hr+Ap9w10bDgiklQo54rZOYqO7HVhNvSXPLK8FYoTcSExgxybCP1+ADqsNfVntLg85tBN8/2CoRHG2qFGMi3gN+NkH3I5yBnkdR/ghnkLMiCXx0Auin6Fmla4Flb6pr/QOocMoQZmYwwQY+T/cbID3UKmXn6ROIS20qZf1LEE8lJm0efka+vahcUiwRLzLITChvRDoTihsx2SbMeoSv0DKthVdkO290X+GE6JdIaMJMNgFnNKHkEy1UGekdcokNq0K5/Bv+wsNmhBTSmlDMiDyl/QKhJj/6rZwIZEadEaakv4gkp4qbaZ8R2W6j6AK/QqQ7zOykIl03aicVcVP17bT3xM9vpY6kE9HRlGQz5jXR2zTkTiowTErt7MxaYj9E4qz7RmT2LfzqPYLIZ5GpE5qZyA+xYP8Ms9iRWfyfYWTLTX5GGYA6ZkUEPrktR9RAm4o/0EQ+GSw7gw1FRKihT7tnIpLvP6CQP6OZiLjZztvsfqCJUMjdwbgR0Rd22v99JZsV7qB0mtlcQJlCGkzha4V7qCwmNj+Y5DgPKCzZ/JDJTlKaD0nNP6ZbY9OjiTzJAAAAAElFTkSuQmCC"
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 40,))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        text: //AppCubit.get(context).showProfileModel!.data.name,
                          "Amgad Mahmoud",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    leading: Icon(
                      Icons.account_circle_outlined,
                      //color: Colors.black,
                    ),
                    horizontalTitleGap: 0,
                    trailing: IconButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed("edit_name");
                      },
                      icon: Icon(Icons.edit,),
                    ),
                  ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        text: //AppCubit.get(context).showProfileModel!.data.email,
                        "amgad@gmail.com",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    leading: Icon(
                      Icons.email_outlined,
                      //color: Colors.black,
                    ),
                    horizontalTitleGap: 0,
                    trailing: IconButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed("edit_email");
                      },
                      icon: Icon(Icons.edit,),
                    ),
                  ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        text: //AppCubit.get(context).showProfileModel!.data.phone,
                        "01011947972",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    leading: Icon(
                      Icons.phone,
                      //color: Colors.black,
                    ),
                    horizontalTitleGap: 0,
                    trailing: IconButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed("edit_phone");
                      },
                      icon: Icon(Icons.edit,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
