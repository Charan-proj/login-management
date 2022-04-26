#include<bits/stdc++.h>
using namespace std;
void login();
void admin_login();
void registration();
void forgot();
int main()
{
    int choice;
    cout<<"--------------------------------------------------------------------------------------------------------------------------------------\n";
    cout<<"----------------------------------------------------------Login Page------------------------------------------------------------------\n\n\n";
    cout<<"___________________________________________________________Menu________________________________________________________________________\n\n";
    cout<<"                                                                                                                                              \n\n";
    cout<<"\t| Press 1 to login as user      |"<<endl;
    cout<<"\t| Press 2 to register           |"<<endl;
    cout<<"\t| Press 3 if you forgot your password |"<<endl;
    cout<<"\t| Press 4 to login as administrator   |"<<endl;
    cout<<"\t| Press 5 to Exit               |"<<endl;
    cout<<"\t| Enter your choice             |"<<endl;
    cin>>choice;
    cout<<endl;
    switch(choice)
    {
        case 1:
            login();
            break;
        
        case 2:
        {
            registration();
            break;
        }
        case 3:
        {
            forgot();
            break;
        }
        case 4:
        {
            admin_login();
            break;
            
        }
        case 5:
        {
            cout<<" =======================Thank you=================\n";
            break;
        }
           
        default:
          system("clear");
          cout<<"=============================================>> Invalid choice!! \n\n"<<endl;
          main();
    }
}    
    void login()
    {
        int count;
        string userId,password,id,pass;
        system("clear");
        cout<<"Enter username and pasword: "<<endl;
        cout<<"USERNAME : "<<endl;
        cin>>userId;
        cout<<"PASSWORD : "<<endl;
        cin>>password;
        
        ifstream input("records.txt");
        while(input>>id>>pass)
        {
            if(id==userId && pass==password)
            {
                count=1;
                system("clear");
                
            }
            
        }
        input.close();
        if(count==1)
        {
            cout<<"==================="<<" "<<userId <<" "<< "Welcome ============================="; 
            cout<<"\n=================== Login is successful =========================\n";
            main();
        }
        else
        {
            system("clear");
            cout<<"=====================================>> LOGIN ERROR!!!"; 
            cout<<"\n =================================>> Please check your username !!\n "<<endl;
            main();
        }
    }
    
    void registration()
        {
        int count;
        string ruserId,rpassword,rid,rpass;
        system("clear");
        cout<<"Enter a username: ";
        cin>>ruserId;
        cout<<"Enter a password :";
        cin>>rpassword;
        ofstream f1("records.txt",ios::app);
        f1<<ruserId<<' '<<rpassword<<endl;
        system("clear");
        cout<<"\n================Registration successful==========\n";
        main();
        }
        
    void forgot()
    {
        int option;
        system("clear");
        cout<<"\nForgot password??\n";
        cout<<"Press 1 to search your user id by username :"<<endl;
        cout<<"Press 2 to go back to main menu : "<<endl;
        cout<<"\nEnter your choice\n";
        cin>>option;
        switch(option)
        {
            case 1:
            {
                int count=0;
                string suserId,sId,spass;
                cout<<"\nEnter the username you remembered: ";
                cin>>suserId;
                
                ifstream f2("records.txt");
                while(f2>>sId>>spass)
                {
                    if(sId==suserId)
                    {
                        count=1;
                    }
                }
                f2.close();
                if(count==1)
                {
                    system("clear");
                    cout<<"\n\n Your account is found \n";
                    cout<<"\n Your password is : "<<spass;
                    cout<<endl;
                    main();
                }
                else
                {
                    system("clear");
                    cout<<"Your account is not found  \n";
                    main();
                }
                break;
            }
            case 2:
            {
                main();
            }
            default :
              cout<<" Wrong choice try again ";
              forgot();
        }
    }
        
    void admin_login()
    {
        string aId,aPw;
        cout<<"Enter username to Login as administrator : "<<endl;
        cin>>aId;
        cout<<"Enter password : "<<endl;
        cin>>aPw;
        if(aId=="admin" && aPw=="admin")
        {
            cout<<"==================="<<" "<<"Admin" <<" "<< "Welcome ============================="; 
            cout<<"\n=================== Login is successful =========================\n";
            //admin function to be added
        }
        else
        {
            cout<<"=====================================>> LOGIN ERROR!!!"; 
            cout<<"\n=================================>> Please check your username and  password !!\n "<<endl;
        }
        
    }
    
