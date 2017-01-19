#Starting a New Project in Xcode

###1. Create the Project
- Product Name - The product name is just the name of your app
- Organization Name - This is the name of company
- Company Identifier - reverse domain name notation for identifiers. (eg. com.aney)
- Devices - This determines if your app is for the iPhone, iPad, or Universal (both). Use Universal.
- Language - Swift.
- Use Core Data - It will add the boilerplate Core Data setup code.


###2. Add .gitignores
```
.DS_Store
xcuserdata
```

```.DS_Store``` files are used by OS X to remember information about the current folder's window location.

The ```xcuserdata``` folder stores you local Xcode data, such as the breakpoints you've set.

###3. Use a shared scheme

[scheme](https://developer.apple.com/library/content/featuredarticles/XcodeConcepts/Concept-Schemes.html)

As you change build configurations, you want those changes shared with your team.

 1. Click the Application icon drop-down, and choose Manage Schemes.
  ![Application icon](https://cloud.githubusercontent.com/assets/20268356/22092879/81d427cc-de44-11e6-8da9-9620fe672cec.png)

 2. In the new window, there is one scheme bundled with your app.
  ![scheme](https://cloud.githubusercontent.com/assets/20268356/22092876/80431de6-de44-11e6-8af9-37c7a6073cd2.png)
  
 3. Check the Shared box.
 
  ![Check the shared box](https://cloud.githubusercontent.com/assets/20268356/22092879/81d427cc-de44-11e6-8da9-9620fe672cec.png)

You will now have an ```ProjectName.xcodeproj/xcshareddata``` folder in your app. Add this file to git.


###Ref
https://github.com/codepath/ios_guides/wiki/New-Project
