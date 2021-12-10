

let tabs = [
    Page(image: "pic1", title: "Up to Date", text: "Get your hands on the latest sneakers in the market, all at an affordable price", status: 0),
    Page(image: "pic2", title: "Convenient", text: "Suitable for all your needs and delivered in no time within the comfort of your home", status: 0),
    Page(image: "pic3", title: "Trendy", text: "Don’t miss out on all the latest fashions news and trends happening around the globe", status: 1)
]

struct Page {
    let image: String
    let title: String
    let text:String
    let status:Int
}
