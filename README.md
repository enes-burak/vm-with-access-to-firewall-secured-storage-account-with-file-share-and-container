# vm-with-access-to-firewall-secured-storage-account-with-file-share-and-container

Hello world!

![Architecture Design](https://github.com/enes-burak/vm-with-access-to-firewall-secured-storage-account-with-file-share-and-container/assets/113402152/c77e5220-a466-4eb9-897a-5fc5cf173624)


In this Terraform project I have successfully created the infrastructure and set up for an environment that includes a virtual machine, storage account, container, file share, and all the necessary connections within them to make them both private to the public, yet connected to one another, all while using the best practices for Terraform. Using Terraform to do this project both makes it reusable and it helps you learn how everything in the backend works and connects with one another, nothing short of a crash course on topics such as: Creation and Configuration of Cloud Infrastructure, Managing different Storage Types, Authentication and Authorization for resources, Network Access Management, and many other things in between. I have provided a broad explanation in the following lines, for detailed examples, refer to the code.

1. We want to set up our first resource group. We will designate this resource group to our virtual machine (VM). To do that, we must create a virtual network (VNET) and subnet within it so that we are able communicate with our new machine. Now, for our VM to connect to our newly acquired VNET, we must also give it a network interface card (NIC).
2. Once we have that set up, we want to get started on our second resource group. This will be used for our storage purposes. We want to start by creating a storage account with no public access, and within it, we want to create a blob container, and a file share. 
3. Now that we have the basics, we can get a little more detailed. We can now set up a Public IP to allow our VM internet access to be able to connect and utilize our azure resources and services.
4. In order to access our resources within our blob container inside our storage account, the method we use involves a Shared Access Signature (SAS) Token. We use this to get past our storage accounts security and gain access to our blob container for a limited time.
5. Having a pass (SAS Token) is enough to authenticate, but what about authorization. While the SAS Token says we are trustworthy, we need to give authority to the users we trust so they can interact with our resources. To do this, we must assign it a role with permissions that fulfil their needs. Best practice is “Principle of least privilege,” which entails that you should only give enough permission as necessary. This avoids any mistakes and misdemeanours. With that in mind, we give ourselves the “Storage Data Blob Owner”, so that we have all the necessary permissions we need, but only within the scope of that container. 
6. Finally, we need to tinker with our VM so that it can connect to the file share that we set up. This can be done by creating deploying the file share and pressing browse, connect through the portal. At the top you will find a connect button and this opens a tab on the right. Make sure to select the operating system of the machine you would like to connect to the file share and press “Show Script”. Copy this script and using your terminal, create a file with this as its contents and make sure that the file extension is “.ps1” (in the case of windows).  This will be the file you select as your script file to run in your VM when it is created so that it has access to your file share.
7. There is also some code pertaining to uploading single files. There is one for the File Share, and also one for the Blob Container. Use these to check if your connections are set up properly! Enjoy!


Here are some screenshots resources of the finished product:
![Resource Group 1](https://github.com/enes-burak/vm-with-access-to-firewall-secured-storage-account-with-file-share-and-container/assets/113402152/daf4a91f-cc92-4087-86ff-6984cef0ce09)
![Resource Group 2](https://github.com/enes-burak/vm-with-access-to-firewall-secured-storage-account-with-file-share-and-container/assets/113402152/1e815de0-8efd-4abd-8002-9ff38f0c1a85)
![Blob Container](https://github.com/enes-burak/vm-with-access-to-firewall-secured-storage-account-with-file-share-and-container/assets/113402152/b06bcc63-e47d-48b3-9ffd-d2bf66b18acd)
![File Share Browse](https://github.com/enes-burak/vm-with-access-to-firewall-secured-storage-account-with-file-share-and-container/assets/113402152/7c16385b-935a-4115-ac5a-6069143f9c3d)



Hopefully this brief walkthrough is enough for you to take on this project and give you pointers along the way.
Thank you and goodbye. :)
