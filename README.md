# AnimatedCurveBottomTab Tab for SwiftUI

The AnimatedCurveBottom Tab is a customizable SwiftUI component that provides a sleek and modern bottom tab bar interface with smooth animation. This component is designed to enhance the user experience by offering a visually appealing way to navigate between different sections or views within your SwiftUI application 😊.

[![CI Status](https://img.shields.io/badge/swift-5.0-brightgreen)](https://img.shields.io/badge/swift-5.0-brightgreen)
[![Platform iOS](https://img.shields.io/badge/platform-iOS-red)](https://img.shields.io/badge/platform-iOS-red)
<a href="https://www.codacy.com?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=nikunjprajapati95/Reading-Animation&amp;utm_campaign=Badge_Grade"><img src="https://app.codacy.com/project/badge/Grade/44b16d6ddb96446b875d38bf2ec89b11"/></a>
<a href="https://github.com/TusharSanchaniya-mi/AnimatedCurveBottomTabbar/blob/main/LICENSE" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/licence-MIT-orange">

## Requirements 🛠️

- iOS 15.0+
- Swift 5.3+
- SwiftUI

## Installation ⚙️

## CocoaPods

You can install AnimatedCurveBottomTabbar via CocoaPods by adding the following line to your Podfile:

```ruby
pod 'AnimatedCurveBottomTab'
```

## Key Features: ✨

Smooth Animation: The tab bar features smooth animation transitions between different tabs, providing a seamless user experience.

Customizable: Easily customize the appearance of the tab bar to match your app's branding and design aesthetic. Customize colors, icons, and tab bar item text to suit your needs.

Interactive: Users can tap on tab bar items to switch between different views quickly. The interactive nature of the component enhances usability and navigation within your app.

Responsive: The AnimatedCurveBottom Tab is designed to be responsive and adapt to different screen sizes and orientations, ensuring consistent behavior across various devices.

## Example

```swift
struct ContainerView: View {

    @State var deafultTab: TabItem = TabItem(id: 0, tabIcon: "icHome")

    @State var arrBottomTabs: [TabItem] = [
        TabItem(id: 0, tabIcon: "icHomeSelected"),
        TabItem(id: 1, tabIcon: "icFavorite"),
        TabItem(id: 2, tabIcon: "ic_Email"),
        TabItem(id: 3, tabIcon: "icUser"),
    ]

    var body: some View {
        ZStack {
            AnimatedCurveBottomTabbar(selectedTab: $deafultTab, items: $arrBottomTabs, tabbarCurvePosition: .top, selectedViewCompletion: {
                switch selectedTab.id {
                case 0:
                    HomeTab()
                case 1:
                    FavoriteTab()
                case 2:
                    MessageTab()
                case 3:
                    UserTab()
                default:
                    Text("Default")
                }
            })
        }
    }
}

```

## 🙋 Author

## [MindInventory](https://www.mindinventory.com/)

## 📱 Check out other lists of our Mobile UI libraries 🤩

<a href="https://github.com/Mindinventory?language=kotlin"> 
<img src="https://img.shields.io/badge/Kotlin-0095D5?&style=for-the-badge&logo=kotlin&logoColor=white"> </a>
<a href="https://github.com/Mindinventory?language=swift"> 
<img src="https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white"> </a>
<a href="https://github.com/Mindinventory?language=dart"> 
<img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"> </a>
<a href="https://github.com/Mindinventory/react-native-tabbar-interaction"> 
<img src="https://img.shields.io/badge/React_Native-20232A?style=for-the-badge&logo=react&logoColor=61DAFB"> </a>

<br></br>

## 💻 Check out other lists of Web libraries 🤩

<a href="hhttps://github.com/Mindinventory?language=javascript"> 
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"></a>
<a href="https://github.com/Mindinventory?language=go"> 
<img src="https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white"></a>
<a href="https://github.com/Mindinventory?language=python"> 
<img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"></a>

<br></br>

<h4><a href="https://www.mindinventory.com/whitepapers.php?utm_source=gthb&utm_medium=special&utm_campaign=folding-cell#demo"><u> 📝 Get FREE Industry WhitePapers →</u></a></h4>

## Check out our Work 📜

<a href="https://dribbble.com/mindinventory"> 
<img src="https://img.shields.io/badge/Dribbble-EA4C89?style=for-the-badge&logo=dribbble&logoColor=white" /> </a>
<br></br>

## 📄 License

AnimatedCurveBottomTab is [MIT-licensed](/LICENSE).

If you use our open-source libraries in your project, please make sure to credit us and Give a star to www.mindinventory.com

<a href="https://www.mindinventory.com/contact-us.php?utm_source=gthb&utm_medium=repo&utm_campaign=swift-ui-libraries">
<img src="https://github.com/Sammindinventory/MindInventory/blob/main/hirebutton.png?raw=true" width="203" height="43"  alt="app development">
</a>
