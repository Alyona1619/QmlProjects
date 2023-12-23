import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Window {
    id:win
    width: 430
    height: 932
    visible: true
    title: qsTr("pet tinder")

    LoginPage{
        visible:true
        id:login_page
        width: win.width
        height: win.height
        anchors.top: win.top
        anchors.bottom: win.bottom
        anchors.left: win.left
        anchors.right: win.right
    }
    HomePage{
        visible:false
        id:home_page
        width: win.width
        height: win.height - navigation.height
        anchors.top: win.top
        anchors.bottom: navigation.top
        anchors.left: win.left
        anchors.right: win.right
    }
    PetPage{
        visible:false
        id:pet_page
        width: win.width
        height: win.height - navigation.height
        anchors.top: win.top
        anchors.bottom: navigation.top
        anchors.left: win.left
        anchors.right: win.right
    }
    ContactPage{
        visible:false
        id:contact_page
        width: win.width
        height: win.height - navigation.height
        anchors.top: win.top
        anchors.bottom: navigation.top
        anchors.left: win.left
        anchors.right: win.right
    }
    DialogPage{
        visible:false
        id:chat_page
        width: win.width
        height: win.height - navigation.height
        anchors.top: win.top
        anchors.bottom: navigation.top
        anchors.left: win.left
        anchors.right: win.right
    }
    FavoritesPage{
        visible:false
        id:fav_page
        width: win.width
        height: win.height - navigation.height
        anchors.top: win.top
        anchors.bottom: navigation.top
        anchors.left: win.left
        anchors.right: win.right
    }
    UserPage{
        visible:false
        id:user_page
        width: win.width
        height: win.height - navigation.height
        anchors.top: win.top
        anchors.bottom: navigation.top
        anchors.left: win.left
        anchors.right: win.right
    }
    OwnerPage{
        visible:false
        id:owner_page
        width: win.width
        height: win.height - navigation.height
        anchors.top: win.top
        anchors.bottom: navigation.top
        anchors.left: win.left
        anchors.right: win.right
    }
    AddPetPage{
        visible:false
        id:add_pet
        width: win.width
        height: win.height - navigation.height
        anchors.top: win.top
        anchors.bottom: navigation.top
        anchors.left: win.left
        anchors.right: win.right
    }
    UserForm{
        visible:false
        id:user_form
        width: win.width
        height: win.height - navigation.height
        anchors.top: win.top
        anchors.bottom: navigation.top
        anchors.left: win.left
        anchors.right: win.right
    }



    Rectangle {
        id: navigation

        visible:false
        width: win.width
        height: win.height/10
        color: "white"
        anchors.bottom: parent.bottom
        anchors.left: win.left
        anchors.right: win.right



        RowLayout {
                id:bottom_nav
                width: parent.width
                height: 90
                anchors.bottom: parent.bottom

                MyButton{
                    id:home
                    anchors.leftMargin: 21
                    anchors.left:parent.left
                    r_source: "assets/home.svg"
                    MouseArea{
                        id: clickHome
                        anchors.fill:parent
                        onClicked:{
                            clickHome.parent.r_color="#D3DE16"
                            home_page.visible=true

                            chat_page.visible = false
                            user_page.visible = false
                            fav_page.visible = false
                            pet_page.visible=false
                            add_pet.visible=false
                            user_form.visible=false
                            contact_page.visible=false
                            owner_page.visible=false

                            clickProfile.parent.r_color="white"
                            clickChats.parent.r_color="white"
                            clickStarred.parent.r_color="white"
                        }
                    }
                }
                MyButton{
                    id:chats
                    r_source: "assets/chats.svg"
                    anchors.left:home.right
                    anchors.leftMargin: (parent.width - 21*2 - 60*3)/4
                    MouseArea{
                        id: clickChats
                        anchors.fill:parent
                        onClicked:{
                            clickChats.parent.r_color="#D3DE16"
                            contact_page.visible=true

                            chat_page.visible = false
                            user_page.visible = false
                            fav_page.visible = false
                            home_page.visible = false
                            pet_page.visible=false
                            add_pet.visible=false
                            user_form.visible=false
                            owner_page.visible=false

                            clickHome.parent.r_color="white"
                            clickProfile.parent.r_color="white"
                            clickStarred.parent.r_color="white"
                        }
                    }
                }
                MyButton{
                    id:starred
                    r_source: "assets/starred.svg"
                    anchors.right:profile.left
                    anchors.rightMargin: (parent.width - 21*2 - 60*3)/4
                    MouseArea{
                        id: clickStarred
                        anchors.fill:parent
                        onClicked:{
                            clickStarred.parent.r_color="#D3DE16"
                            fav_page.visible = true

                            chat_page.visible = false
                            user_page.visible = false
                            home_page.visible = false
                            pet_page.visible=false
                            add_pet.visible=false
                            user_form.visible=false
                            contact_page.visible=false
                            owner_page.visible=false

                            clickHome.parent.r_color="white"
                            clickProfile.parent.r_color="white"
                            clickChats.parent.r_color="white"
                        }
                    }

                }
                MyButton{
                    id:profile
                    r_source: "assets/profile.svg"
                    anchors.rightMargin: 21
                    anchors.right:parent.right
                    MouseArea{
                        id: clickProfile
                        anchors.fill:parent
                        onClicked:{
                            clickProfile.parent.r_color="#D3DE16"
                            user_page.visible = true

                            chat_page.visible = false
                            fav_page.visible = false
                            home_page.visible = false
                            pet_page.visible=false
                            add_pet.visible=false
                            user_form.visible=false
                            contact_page.visible=false
                            owner_page.visible=false

                            clickHome.parent.r_color="white"
                            clickChats.parent.r_color="white"
                            clickStarred.parent.r_color="white"
                        }
                    }
                }


            }
    }



}
